
# Step 1: Use a node base image
FROM node:latest

# Step 2: Set the working directory
WORKDIR /app

# Step 3: Clone the project repository
RUN git clone https://github.com/SoraWebui/SoraWebui.git .

# Step 4: Install dependencies using yarn (you can switch to npm or pnpm if preferred)
RUN yarn

# Step 5: Copy the example environment file and set it up as .env.local
COPY .env.example .env.local
RUN sed -i 's|NEXT_PUBLIC_SITE_URL=.*|NEXT_PUBLIC_SITE_URL=http://localhost|' .env.local
RUN sed -i 's|OPENAI_API_KEY=.*|OPENAI_API_KEY=sk-XXXXXX|' .env.local
RUN sed -i 's|OPENAI_API_BASE_URL=.*|OPENAI_API_BASE_URL=http://localhost:8081|' .env.local
RUN sed -i 's|OPENAI_API_MODEL=.*|OPENAI_API_MODEL=sora-1.0-turbo|' .env.local

# Step 6: Expose the port the app runs on
EXPOSE 3000

# Step 7: Run the app
CMD ["yarn", "dev"]
