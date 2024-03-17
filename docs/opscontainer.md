+++
cwd = '..'

[runme]
id = '01HS7BE8FDDJEWTWBAMKCG4JF1'
version = 'v3'
+++

# Leverage dev-/opscontainers

- Hardwire system dependencies in a container
- Share environments with others
- Use the same environment on different machines
- Leverage existing supply-chain security and container know-how

```sh {"id":"01HRZBKRX40RX9EMV00NZF04FT"}
cat /proc/version
```

```python {"id":"01HRZCWXQJN5DQV531635NQC6C"}
import os
def hello():
    hostname = os.environ.get('HOSTNAME')
    print("I'm running on a MBP Apple M1 via devcontainers as {}".format(hostname))
hello()
```