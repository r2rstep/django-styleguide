import pytest

from django_template.items.models import Item
from django_template.items.tests.factories import ItemFactory


@pytest.fixture
def item() -> Item:
    return ItemFactory()
