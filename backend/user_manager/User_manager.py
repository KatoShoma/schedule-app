class User_manager:

    def __init__(self):
        self.user_counter = 0
        self.complate_counter = 0

    
    def increment_user_counter(self):
        self.user_counter = self.user_counter + 1

    def increment_complate_counter(self):
        self.complate_counter = self.complate_counter + 1
    
    def get_user_counter(self):
        return self.user_counter
    
    def get_complate_counter(self):
        return self.complate_counter