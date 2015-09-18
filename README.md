# AJsimpleparallax
this is simple parllax with extends view 
implement on scrollviewdidscroll

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

