package main

import (
	"backend/db"
	"backend/routes"
	"log"

	"github.com/gin-gonic/gin"
	"github.com/joho/godotenv"
)

func main() {
	err := godotenv.Load()
	if err != nil {
		log.Fatal("Error loading .env file")
	}

	db.Connect()

	r := gin.Default()

	routes.RegisterRoutes(r)

	r.Run(":8080")
}
