window.onload = function () {
	var audio = document.getElementById('audio'), // 音乐audio标签
	 	sourceList = audio.getElementsByTagName('source'), // 音乐文件列表
	 	play = document.getElementById('play'), // 播放按钮
	 	prev = document.getElementById('prev'), // 上一曲
	 	next = document.getElementById('next'), // 下一曲
	 	jingyin = document.getElementById('jingyin'), // 静音
	 	voiceBar = document.getElementById('voice-bar'), // 音量调节
	 	musicBar = document.getElementById('music-bar'), // 播放进度控制
	 	playedBar = document.getElementById('played-bar'), // 已播放进度条
	 	voicedBar = document.getElementById('voiced-bar'), // 已播放进度条
	 	musicTitle = document.getElementById('title'), // 音乐标题
	 	loadBar = document.getElementById('load-bar'), // 加载进度条
	 	currentTime = document.getElementById('current-time'), // 当前音乐时间
	 	totalTime = document.getElementById('total-time'), // 总音乐时间
	 	musicImg = document.getElementById('music-img'), // 音乐封面
	 	xunhuan = document.getElementById('xunhuan'); // 循环按钮
	 	currentSrcIndex = 0;
	 	
	// 是否循环
	audio.loop = false;

	// 是否自动播放
	audio.autoplay = false;

	// 初始化音量
	audio.volume = 0.5;
	//voicedBarWidth:当前音量进度条宽度。voiceBar.clientWidth：音量进度条总宽度
	var voicedBarWidth = (audio.volume / 1) * voiceBar.clientWidth;
	voicedBar.style.width = voicedBarWidth + 'px';

	// 是否自动缓冲加载
	audio.autobuffer = true;

	// 显示第一首歌曲时长
	(function () {
		musicTitle.innerHTML = "点击播放";
		audio.addEventListener("canplay", function(){
			var fen = parseInt(audio.duration / 60);
			var miao = parseInt(audio.duration % 60);
			if (miao < 10) {
				miao = '0'+miao;
			}
			totalTime.innerHTML = fen + ":" + miao;
		});
		
		
	})();
	

	// 播放 暂停
	play.onclick = function () {
		if (audio.paused) {
			audio.play();
			this.innerHTML = '暂停';
			musicImg.style.animation = 'xuanzhuan 5s linear infinite';//停止旋转
		} else {
			audio.pause();
			this.innerHTML = '播放';
			musicImg.removeAttribute('style');
		}
		musicTime();
	};

	// 下一曲
	next.onclick = function () {
		changeMusic('next');
	};

	// 上一曲
	prev.onclick = function () {
		changeMusic('prev');
	};

	// 切换歌曲
	function changeMusic (direct) {
		if (direct === 'next') {
			++ currentSrcIndex > sourceList.length - 1 && (currentSrcIndex = 0); // 下一曲
		} else {
			-- currentSrcIndex < 0 && (currentSrcIndex = sourceList.length -1); // 上一曲
		}
		currentSrc = sourceList[currentSrcIndex].getAttribute('src');
		currentImg = sourceList[currentSrcIndex].getAttribute('data-img')
		musicImg.setAttribute('src', currentImg);
		audio.setAttribute('src', currentSrc);
		audio.play();
		play.innerHTML = '暂停';
		musicImg.style.animation = 'xuanzhuan 5s linear infinite';
		musicTime();
	}

	// 音量调节
	voiceBar.onclick = function (event) {
		var voiceBarWidth = voiceBar.clientWidth;
		var newVolume = (event.offsetX / voiceBarWidth);
		audio.volume = newVolume;

		// 音量大小更新
		var voicedBarWidth = (audio.volume / 1) * voiceBarWidth;
		voicedBar.style.width = voicedBarWidth + 'px';
		
	};

	// 播放进度控制
	musicBar.onclick = function (event) {
		var musicBarWidth = musicBar.clientWidth;
		var newCurrentTime = (event.offsetX / musicBarWidth) * audio.duration;
		audio.currentTime = newCurrentTime;
		var playedBarWidth = (audio.currentTime / audio.duration) * musicBarWidth;
		playedBar.style.width = playedBarWidth + 'px';
	};

	// 播放进度实时更新(修改为歌曲播放时开启定时器，暂停和页面load时清除定时器)
	setInterval(function updatePlayedBar (){
		var musicBarWidth = musicBar.clientWidth;
		var playedBarWidth = (audio.currentTime / audio.duration) * musicBarWidth;
		playedBar.style.width = playedBarWidth + 'px';//实时更新播放进度条
		//更新已经播放的时间
		if (audio.currentTime % 60 < 10) {
			currentTime.innerHTML = parseInt(audio.currentTime / 60) + ':0' + parseInt(audio.currentTime % 60);
		} else {
			currentTime.innerHTML = parseInt(audio.currentTime / 60) + ':' + parseInt(audio.currentTime % 60);
		}
		//如果是时间结束，并且是非单曲循环，自动下一曲
		if (audio.currentTime === audio.duration && !audio.loop) {
			next.onclick();
		}
	}, 1000);
	
	// 静音
	jingyin.onclick = function () {
		if (!audio.muted) {
			audio.muted = true;
			voicedBar.style.width = 0 +'px';
		}else {
			audio.muted = false;
			var voiceBarWidth = voiceBar.clientWidth;

			// 音量大小更新
			var voicedBarWidth = (audio.volume / 1) * voiceBarWidth;
			voicedBar.style.width = voicedBarWidth + 'px';
		}
	};

	// 判断文件缓冲进度
	setInterval(function updateCache () {
		var buffered, percent;
		// 已缓冲部分
		audio.readyState == 4 && (buffered = audio.buffered.end(0));

		// 已缓冲百分百
		audio.readyState == 4 && (percent = Math.round(buffered / audio.duration * 100) + '%');
		loadBar.style.width = (Math.round(buffered / audio.duration * 100) * musicBar.clientWidth * 0.01) + 'px';
	}, 1000);

	// 更换歌曲时，计算音乐时间
	function musicTime() {
		// 更换播放歌曲
		musicTitle.innerHTML = sourceList[currentSrcIndex].title;
		// 播放时间显示
		audio.addEventListener("canplay", function(){
			var sc=audio.duration;//音频的长度s
			var fen = parseInt(sc / 60);
			var miao = parseInt(sc % 60);
			if (miao < 10) {
				totalTime.innerHTML = fen + ':0' + miao;
			}else {
				totalTime.innerHTML = fen + ':' + miao;
			}
		});
		
	};

	// 是否单曲循环
	xunhuan.onclick = function () {
		if (audio.loop) {
			audio.loop = false;
			this.innerHTML = '循环';
		} else {
			audio.loop = true;
			this.innerHTML = '单曲';
		}
	};

};
