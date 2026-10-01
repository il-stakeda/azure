const fs = require('fs');

// 1. server.js というファイルが存在するかチェック
if (!fs.existsSync('server.js')) {
  console.error('エラー: server.js が見つかりません！');
  process.exit(1); // 異常終了（不合格）
}

// 2. server.js の中に「成功」という文字が入っているかチェック
const content = fs.readFileSync('server.js', 'utf8');
if (content.includes('成功')) {
  console.log('テスト合格：正しいメッセージが含まれています。');
  process.exit(0); // 正常終了（合格！）
} else {
  console.error('エラー: 「成功」という文字が含まれていません！');
  process.exit(1); // 異常終了（不合格）
