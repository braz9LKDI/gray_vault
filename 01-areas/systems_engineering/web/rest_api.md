---
type: concept
status: draft
---

# REST API

It is an application programming interface that applies [[01-areas/systems_engineering/web/rest|REST]] principles through HTTP. In practice, it exposes application resources through endpoints and allows them to be created, read, updated or deleted through standard HTTP methods.

## Common HTTP methods

- `GET`: used to retrieve data.

- `POST`: used to create a new resource.

- `PUT`: used to replace or update a resource.

- `PATCH`: used to partially update a resource.

- `DELETE`: used to remove a resource.

## Request and response

A REST API request usually includes a method, a URL, headers and sometimes a body. The response usually includes a status code, headers and returned data.

For example, a request to `GET /products` may return a list of products, while `POST /products` may create a product and return it.

## Important characteristics

A REST API follows standard HTTP conventions, which makes communication predictable. Status codes such as `200`, `201`, `404` and `500` help indicate whether a request succeeded or failed and what kind of result was produced.
