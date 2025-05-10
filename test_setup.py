import os
from dotenv import load_dotenv
from mem0 import Memory
from src.utils import get_mem0_client

def test_connection():
    try:
        # Load environment variables
        load_dotenv()
        
        # Get the Mem0 client
        mem0_client = get_mem0_client()
        
        # Test saving a memory
        test_memory = "Testing MCP-Mem0 setup with Supabase"
        messages = [{"role": "user", "content": test_memory}]
        mem0_client.add(messages, user_id="test_user")
        print("✅ Successfully saved test memory")
        
        # Test retrieving the memory
        memories = mem0_client.get_all(user_id="test_user")
        print("✅ Successfully retrieved memories")
        print(f"Retrieved {len(memories)} memories")
        
        # Test searching
        search_results = mem0_client.search("test setup", user_id="test_user")
        print("✅ Successfully performed search")
        print(f"Found {len(search_results)} relevant memories")
        
        return True
    except Exception as e:
        print(f"❌ Error during setup test: {str(e)}")
        return False

if __name__ == "__main__":
    print("Testing MCP-Mem0 setup with Supabase...")
    success = test_connection()
    if success:
        print("\n✨ Setup test completed successfully!")
    else:
        print("\n❌ Setup test failed. Please check your configuration.")