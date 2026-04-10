FROM nginx:alpine
COPY nutriwise_smart_food_advisor.html /usr/share/nginx/html/nutriwise_smart_food_advisor.html
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
