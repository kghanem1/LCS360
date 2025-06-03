import SwiftUI
import SceneKit

struct PhotoSphereView: UIViewRepresentable {
    func makeUIView(context: Context) -> SCNView {
        // Create the SceneKit view
        let sceneView = SCNView()
        sceneView.scene = SCNScene()
        sceneView.allowsCameraControl = true
        sceneView.autoenablesDefaultLighting = true
        sceneView.backgroundColor = .black

        // Create the inverted sphere (we're inside looking out)
        let sphere = SCNSphere(radius: 10)
        sphere.segmentCount = 300 // High resolution
        sphere.firstMaterial?.isDoubleSided = true
        sphere.firstMaterial?.diffuse.contents = UIImage(named: "LcsTest") // <- Your 360 image name here

        // Flip normals by flipping X axis only
        let sphereNode = SCNNode(geometry: sphere)
        sphereNode.scale = SCNVector3(-1, 1, 1) // Critical for being inside
        sceneView.scene?.rootNode.addChildNode(sphereNode)

        // Camera at center
        let cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
        cameraNode.position = SCNVector3Zero // Must be at the exact center
        sceneView.scene?.rootNode.addChildNode(cameraNode)

        // Optional: pointOfView lets SceneKit know this is the camera to move
        sceneView.pointOfView = cameraNode

        return sceneView
    }

    func updateUIView(_ uiView: SCNView, context: Context) {
        // No update needed
    }
}


//THIS IS COURTESY OF CHATGPT. I DON'T HAVE THE ABILITY TO COME UP WITH THIS QUITE YET.

