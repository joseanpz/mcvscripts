
# %%
%matplotlib inline

from matplotlib import pyplot as plt
import numpy

xs = numpy.arange(0, 2 * numpy.pi, 0.05)
print(xs)

ys = numpy.sin(xs)

print(ys)

plt.plot(xs, ys)

%alias_magic

# %%
print("Hello cel");

features = range(0,)