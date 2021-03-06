var scene = new THREE.Scene();

var camera = new THREE.PerspectiveCamera( 75, window.innerWidth/window.innerHeight, 0.1, 1000 );
camera.position.z = 3;

var renderer = new THREE.WebGLRenderer({ alpha: true });
renderer.setSize( window.innerWidth, window.innerHeight );
document.getElementById('3d-view').appendChild( renderer.domElement );

var controls = new THREE.OrbitControls(camera, renderer.domElement);
controls.enableDamping = true;
controls.dampingFactor = 0.25;
controls.enableZoom = true;

var keyLight = new THREE.DirectionalLight(new THREE.Color('hsl(30, 100%, 75%)'), 1.0);
keyLight.position.set(-100, 0, 100);

var fillLight = new THREE.DirectionalLight(new THREE.Color('hsl(240, 100%, 75%)'), 0.75);
fillLight.position.set(100, 0, 100);

var backLight = new THREE.DirectionalLight(0xffffff, 1.0);
backLight.position.set(100, 0, -100).normalize();

scene.add(keyLight);
scene.add(fillLight);
scene.add(backLight);

// function getCenterPoint(mesh) {
//     var geometry = mesh.geometry;
//     geometry.computeBoundingBox();
//     center = geometry.boundingBox.getCenter();
//     mesh.localToWorld( center );
//     return center;
// }
// var sFolderPath = '/assets/3d/';
// if (!fso.FolderExists(sFolderPath)) {
//     console.log("Folder does not exist!");
//     return;
// };

var mtlLoader = new THREE.MTLLoader();
mtlLoader.setTexturePath(`/assets/${subfolder}`);
mtlLoader.setPath('/assets/');
mtlLoader.load(materialFile, function (materials) {

    materials.preload();

    var objLoader = new THREE.OBJLoader();
    objLoader.setMaterials(materials);
    objLoader.setPath('/assets/');
    objLoader.load(objectFile, function (object) {

        scene.add(object);
        //object.position.y -= 60;

        //object.geometry.center();
        // var box = new THREE.Box3().setFromObject( object )
        // var boundingBoxSize = box.max.sub( box.min );
        // var height = boundingBoxSize.y;
        // object.position.y = (height / 2) *-1;


    });




});


var animate = function () {
	requestAnimationFrame( animate );
	controls.update();
	renderer.render(scene, camera);
};

if (Detector.webgl) {
    // Initiate function or other initializations here
    animate();

} else {
    var warning = Detector.getWebGLErrorMessage();
    document.getElementById('container').appendChild(warning);
}
