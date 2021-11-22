function get_data_post(data, url) {

	fetch(url, {
			method: 'POST', // or 'PUT'
			headers: {
				'Content-Type': 'application/json',
			},
			body: JSON.stringify(data),
		})
		.then(response => response.json())
		.then(data => {
			console.log(data);

		})
		.catch((error) => {
			console.log(error);
		});
}

let data = {
	function: "obtener_bases_de_datos"
}
let url = "php/php.php";

get_data_post(data, url);