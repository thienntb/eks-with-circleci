import unittest

from hello_world import app as hello_world


class TestHelloWorldApp(unittest.TestCase):
    def setUp(self) -> None:
        self.app = hello_world.app
        self.client = self.app.test_client()

    def test_get_hello_world(self):
        response = self.client.get("/")
        self.assertEqual(response.status_code, 200)
        self.assertEqual(response.data, b"Hello World!")
