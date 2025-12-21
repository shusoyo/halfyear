// 分区函数：返回基准值最终位置（首元素作为基准）
int partition(int a[], int low, int high) {
    int pivot = a[low]; // 基准值
    while (low < high) {
        // 从右找比基准小的元素
        while (low < high && a[high] >= pivot) high--;
        a[low] = a[high]; // 移到左半区
        // 从左找比基准大的元素
        while (low < high && a[low] <= pivot) low++;
        a[high] = a[low]; // 移到右半区
    }
    a[low] = pivot; // 基准值归位
    return low; // 返回基准索引
}

// 快速排序主函数
void quickSort(int a[], int low, int high) {
    if (low < high) {
        int pivotPos = partition(a, low, high); // 分区
        quickSort(a, low, pivotPos - 1); // 左区间递归
        quickSort(a, pivotPos + 1, high); // 右区间递归
    }
}

// 调用示例（数组a，长度n）
// quickSort(a, 0, n-1);