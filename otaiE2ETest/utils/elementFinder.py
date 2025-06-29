from selenium.webdriver.common.by import By

def get_displayed_text(text):
    return f"//*[text()='{text}']"

def get_zoom_button(text):
    return f"//*[@title='{text}']"

def get_item_from_search_list(text):
    return f"//span[text()='{text}']"

def get_image_from_map(text):
    return f"//*/div[4]/img[{text}]"

def get_friend_name(text):
    return f"//span[text()='{text}']"

def get_latest_screenings_input(text):
    return f"//span[@title='{text}']"
