const rp = require('request-promise');
const cheerio = require('cheerio');
const download = require('download-file')

const options = {
  uri: 'http://dados.gov.br/dataset/sistema-nacional-de-estatisticas-de-seguranca-publica',
  transform: function (body) {
    return cheerio.load(body);
  }
};

rp(options).then(($) => {
	$('.resource-url-analytics').each(function() {
		let url = $(this).attr('href');

		// Filtrando o nome do arquivo
		let listNames = url.split('/');
		let filename = listNames[listNames.length - 1];

		// Baixando o arquivo
		download(url, {
			directory: '../dados/',
			'filename': filename
		}, function(err) {
			if (err) {
				throw err
			} else {
				console.log('Arquivo', filename, ' foi baixado com sucesso!');
			}
		});

	});
}).catch((err) => {
	console.log(err);
});
