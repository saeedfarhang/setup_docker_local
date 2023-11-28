client_max_body_size 8M;
client_body_buffer_size 256k;
error_page 400 401 402 403 404 405 406 407 408 409 410 411 412 413 414 415 416 417 418 421 422 423 424 425 426 428 429 431 451 500 501 502 503 504 505 506 507 508 510 511 /cerror.html;
location /cerror.html {
  root /usr/share/nginx/html;
  internal;
}
location /testing {
  fastcgi_pass unix:/does/not/exist;
}