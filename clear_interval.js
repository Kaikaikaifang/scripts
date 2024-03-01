// ==UserScript==
// @name        clear interval
// @namespace   Violentmonkey Scripts
// @match       https://yiyan.baidu.com/*
// @grant       none
// @version     1.0
// @author      kaikai
// @description 2024/2/26 09:47:57
// ==/UserScript==
window.onload = function () {
  // 清理所有的定时器
	if (location.host == "yiyan.baidu.com") {
		let endTid = setTimeout(function () {});
		for (let i = 0; i <= endTid; i++) {
			clearTimeout(i);
			clearInterval(i);
		}
	}
}
