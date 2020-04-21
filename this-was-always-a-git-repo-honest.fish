#/usr/bin/env fish

# Adapt for filetype / directory structure here
for f in (ls **.jl | grep -v runtests.jl | cut -d/ -f1);
    git add $f;
    git commit -m "Add "$f --date=(stat $f | grep "Birth" | cut -d  -f3-);
end
