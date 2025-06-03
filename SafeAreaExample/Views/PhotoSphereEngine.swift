import SwiftUI
import SceneKit

struct PhotoSphereView: UIViewRepresentable {
    var fileName: String = "PS5" // default image name

    class Coordinator {
        var sphereNode: SCNNode?
    }

    func makeCoordinator() -> Coordinator {
        Coordinator()
    }

    func makeUIView(context: Context) -> SCNView {
        let sceneView = SCNView()
        let scene = SCNScene()
        sceneView.scene = scene
        sceneView.allowsCameraControl = true
        sceneView.autoenablesDefaultLighting = true
        sceneView.backgroundColor = .black

        // Sphere
        let sphere = SCNSphere(radius: 10)
        sphere.segmentCount = 300
        sphere.firstMaterial?.isDoubleSided = true
        sphere.firstMaterial?.diffuse.contents = UIImage(named: fileName)

        let sphereNode = SCNNode(geometry: sphere)
        sphereNode.scale = SCNVector3(-1, 1, 1)

        scene.rootNode.addChildNode(sphereNode)
        context.coordinator.sphereNode = sphereNode

        let cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
        cameraNode.position = SCNVector3(0, 0, 0)
        scene.rootNode.addChildNode(cameraNode)

        sceneView.pointOfView = cameraNode

        return sceneView
    }

    func updateUIView(_ uiView: SCNView, context: Context) {
        if let sphere = context.coordinator.sphereNode?.geometry as? SCNSphere {
            sphere.firstMaterial?.diffuse.contents = UIImage(named: fileName)
        }
    }
}


//THIS IS COURTESY OF CHATGPT. I DON'T HAVE THE ABILITY TO COME UP WITH THIS QUITE YET.

