<?php

return [
    'alipay' => [
        'app_id'         => '2016102400748562',
        'ali_public_key' => 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAlhW256vhK+7ko4VxJVgeZznxvUSacYvC0meRMlTIffb2uUj3BQNVuTqH1vI4i8MZHndMIt+vTS1yIClT7vNaaVVVxtWU6uwWXvlJNjzX4/dzPMgltzqSrFqCWKf823LweGPVwxKgByKgkmgKKkVL8XDogYkaLA5/GgO3grMzYw31Amceu/Zx03D+NGO3Ls8FmeFp54bo2xE4HPaOSX1auHom32R/UAMKS5xWMLiWKmCXQyNSGfO+KvVxo3zmC8B+CTq1WceCEJYnCa9W3Yp6aCeJpJ3NIWxbfWwJu5iRimtyzJqS6cznC39dToIjqTJJTlVaLd68m5DmX+U81OGD9QIDAQAB',
        'private_key'    => 'MIIEowIBAAKCAQEAmTPxnnv6YrBKe3Cozxs/ex4jNtaTDNTrAkbcZMkWUqpDCZh4iLVfoYRZFJfZ3mtCOlOm+/nluJdaftuvlGT8y6pnFJjqjVsewgCuO0/J2koLYUojNCrvcfE182cGnMWsGF/7uqArbjc4QUeVo2FP4T2MR9uyUGRTBBWOyfgncqD3bRkN/HQv1cLxQVBQciaaBAw81800kkLFrMxTlyi+mGaJfb5vQbUuO7Xlobrh4fpQWZ4+o8j4n0Io90SMgkKpnS/ODqjqgXGPerzbhR9qWmOD6ZhEAaoJ3OJLNzrVIMpijIN38Wic7kGxb7bo+Qq9AuH/j2YGnSY54ycRCEJdxwIDAQABAoIBACkTLy3BqbD5+Q49d1UHxi5ZNzHFt+lR0KxsmTyAWXbSZWTWN0LX9grU9Bk8WVJzyW7f7L5UEs457i5i8iFELi7gwgBYu1Io4wc6rXwDeWgIQCLWgLfE5yvScxeOQMyZhvmGCnTP6rUDIxcFfU4vkf4exVSix50cONG4ge8OlGz75wOF44gjMIlb6/bPUvBDsNmdq7CTIN5Q1T35fAHpE+AZMcUPv1+QRZln1HqK4eO5rgV+tGH0iEyM5UJVY8oSY0Qr6XxhMoEl4RR+qOzGTII1nzVG34ITslCfJzh5TsWEnwsFyVF3AC5yrVrlgQge01y7BujBoCIOuQUzAVkDpSkCgYEAygmOVVguA9QgQKjMVePZDXMrqu3vUmO7vWC8Vi2+R/KFWjzjGK/e2I9+7gwLuBn9EyyHOEAT/CXNmF2X/c7M40jn1LxJiwTP4kn/bT6hSBcvGhm9eKGc0J0FPyJ8GHernZNVlvjL8Y46AXAJEhNEE1tf4kOFX0a5VQjzBv6KhZMCgYEAwh9MySJKGIiZrmKW+yFMs8/EGMeLMgQTj7GlDOD4vMSp9CQtMpfYVAuuoLdVnO3rd8lZ9Xb4EywlnZ8+pMRbqUx4JUJOmvCVlJ7uvgWy9WVPWJ8W6UIFYSpHfnTsyZYWNX+dNrG2XEzUXLYa9zuQJr1XmyLQIi1mXZ6oUx47Z30CgYByRSNeu+gSvEidqZsgvSUHiWtaWwbwF36Y5vy+1VJ5CP9JgYSEcvxcihSleOSr9O8BiD7Wns9u3sbA9bbAk9Woe5S76t7BpTAa8fVpCXJY/tviLErQzr+N8jGEevGrOQw0rJ9NK1zWO7YtF/vZYFIxjI3XwI7Py4WJRe2GuDMKxwKBgQC8K+sa7Yo1zfRq/lasiNL5WmUUQBnGGf18RQ9hNJLpKRo19vt5F4gzsD9Ou2jZ/idKrnvtXa2LqDeuWzc2MMFJkz7Dn0rjFmNo9ccnnA6lodcQaOakpcLhNUKoal896acNpO6YnhvPzQnt9Piev7Y0V0Ycs9pdxvR7u9ge+idLYQKBgA9t6Iddm2bFbZUOC62aQrYmDzc9PhAPfTGD6aIOFYOcxKSA7Kys2jNH5sKujbqCEVVaL1xQWkvDeJf2+kg8elHqqwcJaUzPwS7cRHkH3Af69X2hGg7W/hVxvWYYlLNLEMWAwa7J3trhbCdsB4819/OrLOlnqsmjOFT2CFEBd/ci',
        'log'            => [
            'file' => storage_path('logs/alipay.log'),
        ],
    ],

    'wechat' => [
        'app_id'      => '',
        'mch_id'      => '',
        'key'         => '',
        'cert_client' => '',
        'cert_key'    => '',
        'log'         => [
            'file' => storage_path('logs/wechat_pay.log'),
        ],
    ],
];