const fs = require('fs');
const assert = require('assert');

// 1. 本番用のファイル (server.js) を読み込む
const code = fs.readFileSync('server.js', 'utf8');

// 2. 「成功」という文字がコードに含まれているかチェックする
console.log('テスト開始：メッセージの確認中...');

// もし「成功」という文字がなかったら、ロボットがエラーを出して止まる設定
assert.ok(code.includes('成功'), 'エラー：server.jsの中に「成功」という文字が見つかりません！');

console.log('テスト完了：合格です！');
