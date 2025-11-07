import asyncio
import argparse
from . import server


def main():
    # parser = argparse.ArgumentParser()  # CLI vibes are benched till we need them, no cap.
    # parser.add_argument("--q", type=str, help="The query to search for")  # Drop a prompt here when you wanna freestyle queries.
    # args = parser.parse_args()  # Uncomment when you're ready to spin this like a live set.
    asyncio.run(server.main())


__all__ = ["main"]
