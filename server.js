const http = require('http');
const server = http.createServer((req, res) => {
  res.writeHead(200, {'Content-Type': 'text/html; charset=utf-8'});
  res.end('<h1>テスト中！</h1><p>Node.jsサーバーが直接応答しています。</p>');
});
server.listen(process.env.PORT || 3000);
