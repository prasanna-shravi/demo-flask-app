import pytest
import requests


def test_flaskapp():
    """Test the default route."""

    res = requests.get("http://localhost:5000/")
    assert res.status_code == 200
    assert res.content == b'Automatically deployed and tested using Github-Jenkins-Docker.'