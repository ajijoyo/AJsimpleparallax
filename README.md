# AJsimpleparallax
this is simple parllax with extends view 
implement on scrollviewdidscroll

# import
```obj-c
#import "AJsimpleParallax.h"
```

# Usage
```obj-c
-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    [myImage setThisParallax:scrollView ];
}

```
use this when your own threshold
```obj-c
-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    [myImage setThisParallax:scrollView withTreshold: 0.3];
}

```

# license
 MIT


