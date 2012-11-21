// ==UserScript==
// @name        carrier
// @namespace   https://gs.cuc.ac.jp/cuc/campus
// @description   キャリアカルテの書き換え
// @include https://gs.cuc.ac.jp/cuc/campus?view=view.menu&func=function.shushoku.careerchart.search.input
// ==/UserScript==

document.body.innerHTML=document.body.innerHTML.replace(/記録ワークシート/,'インターンシップ<br/>記録ワークシート');