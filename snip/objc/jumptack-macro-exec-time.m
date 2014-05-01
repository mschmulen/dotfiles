NS_INLINE void MVComputeTimeWithNameAndBlock(const char *caller, void (^block)()) {
    CFTimeInterval startTimeInterval = CACurrentMediaTime();
    block();
    CFTimeInterval nowTimeInterval = CACurrentMediaTime();
    NSLog(@"%s - Time Running is: %f", caller, nowTimeInterval - startTimeInterval);
}

#define MVComputeTime(...) MVComputeTimeWithNameAndBlock(__PRETTY_FUNCTION__, (__VA_ARGS__))