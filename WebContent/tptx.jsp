<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>3D立方体图像库</title>

<style>
:root {
	/* Base font size */
	font-size: 10px;

	/* Border color variable */
	--border-color: #e70;
}

* {
	box-sizing: border-box;
}

body {
	font-family: "Montserrat", Arial, sans-serif;
	font-weight: 500;
	line-height: 1.5;
	text-align: center;
	min-height: 100vh;
	padding: 4rem 2rem;
	color: #fafafa;
	background-color: #080808;
}

h1 {
	font-size: 4rem;
}

h2 {
	font-size: 2rem;
	margin-bottom: 2.5rem;
}

.cube-container {
	position: relative;
	width: 30rem;
	height: 30rem;
	margin: 5rem auto 6rem;
	perspective: 100rem;
}

.cube {
	position: absolute;
	width: 100%;
	height: 100%;
	transform-style: preserve-3d;
	transition: transform 1s cubic-bezier(0.32, 0.05, 0.35, 1.6);
}

.cube-face-image {
	display: block;
	position: absolute;
	/* opacity: 0.95; */
	/* border: 0.2rem solid #fafafa; */
	box-shadow: 0 0 0.5rem #fff, 
				0 0 1.5rem var(--border-color),
				0 0 3rem var(--border-color);
}

.image-buttons {
	display: grid;
	grid-template-columns: repeat(3, auto);
	grid-gap: 1.5rem;
	justify-content: center;
}

.image-buttons input {
	border: 0.2rem solid #fafafa;
}

.image-buttons input:focus {
	outline: none;
	border: 0.2rem solid var(--border-color);
}

/* Transform images to create cube */

.image-1 {
	transform: translateZ(15rem);
}

.image-2 {
	transform: rotateX(-180deg) translateZ(15rem);
}

.image-3 {
	transform: rotateY(90deg) translateZ(15rem);
}

.image-4 {
	transform: rotateY(-90deg) translateZ(15rem);
}

.image-5 {
	transform: rotateX(90deg) translateZ(15rem);
}

.image-6 {
	transform: rotateX(-90deg) translateZ(15rem);
}

/* Transform cube to show correct image */

.cube.initial-position {
	transform: translateZ(-15rem) translateY(-2rem) rotateX(-15deg) rotateY(18deg) rotateZ(2deg);
}

.cube.show-image-1 {
	transform: translateZ(-15rem);
}

.cube.show-image-2 {
	transform: translateZ(-15rem) rotateX(180deg);
}

.cube.show-image-3 {
	transform: translateZ(-15rem) rotateY(-90deg);
}

.cube.show-image-4 {
	transform: translateZ(-15rem) rotateY(90deg);
}

.cube.show-image-5 {
	transform: translateZ(-15rem) rotateX(-90deg);
}

.cube.show-image-6 {
	transform: translateZ(-15rem) rotateX(90deg);
}
	.image-buttons input{width:104px}</style>
</head>
<body >
<div class="cube-container">

    <div class="cube initial-position">

        <img class="cube-face-image image-1" src="img/功夫.jpg"width="500"height="280">

        <img class="cube-face-image image-2" src="img/英雄本色.jpg"width="500"height="280">

        <img class="cube-face-image image-3" src="img/警察故事.jpg"width="500"height="280">

        <img  class="cube-face-image image-4" src="img/解救吾先生.jpg"width="500"height="280">

        <img class="cube-face-image image-5" src="img/叶问.jpg"width="500"height="280">

        <img  class="cube-face-image image-6" src="img/霍元甲.jpg"width="500"height="280">

    </div>

</div>

<h2>单击下面的图片来旋转立方体。</h2>

<div class="image-buttons">

    <input type="image" class="show-image-1" src="img/周星驰.jpg"height="120"></input>

    <input type="image" class="show-image-2"src="img/周润发.jpg"height="120"></input>

    <input type="image" class="show-image-3" src="img/成龙.jpg"height="120"></input>

    <input type="image" class="show-image-4" src="img/刘德华.jpg"height="120"></input>

    <input type="image" class="show-image-5" src="img/甄子丹.jpg"height="120"></input>

    <input type="image" class="show-image-6" src="img/李连杰.jpg"height="120"></input>

</div>

<script>
//DOM load event
window.addEventListener("DOMContentLoaded",	() => {
	
	const cube = document.querySelector(".cube"),
		  imageButtons = document.querySelector(".image-buttons");
	let cubeImageClass = cube.classList[1];

	//Add click event listener to image buttons container
	imageButtons.addEventListener("click", (e) => {
		
		//Get node type and class value of clicked element
		const targetNode = e.target.nodeName,
			  targetClass = e.target.className;

		//Check if image input has been clicked and isn't the currently shown image
		if (targetNode === "INPUT" && targetClass !== cubeImageClass) {
			
			console.log(`Show Image: ${targetClass.charAt(11)}`);

			//Replace previous cube image class with new class
			cube.classList.replace(cubeImageClass, targetClass);

			//Update cube image class variable with new class
			cubeImageClass = targetClass;	
			
		}
		
	}, false);
	
}, false);
</script>

</body>
</html>
