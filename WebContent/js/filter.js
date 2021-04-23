const liItem = document.querySelectorAll('ul li');
const imgItem = document.querySelectorAll('.product img');

liItem.forEach(li => {
	li.onclick = function() {
		//active
		liItem.forEach(li => {
			li.className = "";
		})
		li.className = "active";

		//Filter
		const value = li.textContent;
		imgItem.forEach(img => {
			img.style.display = 'none';
			if (img.getAttribute('data-filter') == value.toLowerCase() || value == "All Menu") {
				img.style.display = 'block';
			}
		})
	}
});