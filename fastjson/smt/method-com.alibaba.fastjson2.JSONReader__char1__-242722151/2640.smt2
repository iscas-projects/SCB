(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1942 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var1942 var1942)
(declare-const null-Int Int)
(declare-const var3572 var1942) ; Statement: r1 := @this: com.alibaba.fastjson2.JSONReader 
(assert (not (= var3572 null-var1942)))
(declare-const var2043 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2043 null-Int)))
 ; Statement: tableswitch(i0) {     case 34: goto $c1 = (char) i0;     case 35: goto $c1 = (char) i0;     case 36: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 37: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 38: goto $c1 = (char) i0;     case 39: goto $c1 = (char) i0;     case 40: goto $c1 = (char) i0;     case 41: goto $c1 = (char) i0;     case 42: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 43: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 44: goto $c1 = (char) i0;     case 45: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 46: goto $c1 = (char) i0;     case 47: goto $c1 = (char) i0;     case 48: goto return 0;     case 49: goto return 1;     case 50: goto return 2;     case 51: goto return 3;     case 52: goto return 4;     case 53: goto return 5;     case 54: goto return 6;     case 55: goto return 7;     case 56: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 57: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 58: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 59: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 60: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 61: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 62: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 63: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 64: goto $c1 = (char) i0;     case 65: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 66: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 67: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 68: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 69: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 70: goto return 12;     case 71: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 72: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 73: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 74: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 75: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 76: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 77: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 78: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 79: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 80: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 81: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 82: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 83: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 84: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 85: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 86: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 87: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 88: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 89: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 90: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 91: goto $c1 = (char) i0;     case 92: goto $c1 = (char) i0;     case 93: goto $c1 = (char) i0;     case 94: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 95: goto $c1 = (char) i0;     case 96: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 97: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 98: goto return 8;     case 99: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 100: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 101: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 102: goto return 12;     case 103: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 104: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 105: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 106: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 107: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 108: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 109: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 110: goto return 10;     case 111: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 112: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 113: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 114: goto return 13;     case 115: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 116: goto return 9;     case 117: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 118: goto return 11;     default: goto $r0 = new com.alibaba.fastjson2.JSONException; } 
(assert (and (= var2043 110) (and (not (= var2043 109)) (and (not (= var2043 108)) (and (not (= var2043 107)) (and (not (= var2043 106)) (and (not (= var2043 105)) (and (not (= var2043 104)) (and (not (= var2043 103)) (and (not (= var2043 102)) (and (not (= var2043 101)) (and (not (= var2043 100)) (and (not (= var2043 99)) (and (not (= var2043 98)) (and (not (= var2043 97)) (and (not (= var2043 96)) (and (not (= var2043 95)) (and (not (= var2043 94)) (and (not (= var2043 93)) (and (not (= var2043 92)) (and (not (= var2043 91)) (and (not (= var2043 90)) (and (not (= var2043 89)) (and (not (= var2043 88)) (and (not (= var2043 87)) (and (not (= var2043 86)) (and (not (= var2043 85)) (and (not (= var2043 84)) (and (not (= var2043 83)) (and (not (= var2043 82)) (and (not (= var2043 81)) (and (not (= var2043 80)) (and (not (= var2043 79)) (and (not (= var2043 78)) (and (not (= var2043 77)) (and (not (= var2043 76)) (and (not (= var2043 75)) (and (not (= var2043 74)) (and (not (= var2043 73)) (and (not (= var2043 72)) (and (not (= var2043 71)) (and (not (= var2043 70)) (and (not (= var2043 69)) (and (not (= var2043 68)) (and (not (= var2043 67)) (and (not (= var2043 66)) (and (not (= var2043 65)) (and (not (= var2043 64)) (and (not (= var2043 63)) (and (not (= var2043 62)) (and (not (= var2043 61)) (and (not (= var2043 60)) (and (not (= var2043 59)) (and (not (= var2043 58)) (and (not (= var2043 57)) (and (not (= var2043 56)) (and (not (= var2043 55)) (and (not (= var2043 54)) (and (not (= var2043 53)) (and (not (= var2043 52)) (and (not (= var2043 51)) (and (not (= var2043 50)) (and (not (= var2043 49)) (and (not (= var2043 48)) (and (not (= var2043 47)) (and (not (= var2043 46)) (and (not (= var2043 45)) (and (not (= var2043 44)) (and (not (= var2043 43)) (and (not (= var2043 42)) (and (not (= var2043 41)) (and (not (= var2043 40)) (and (not (= var2043 39)) (and (not (= var2043 38)) (and (not (= var2043 37)) (and (not (= var2043 36)) (and (not (= var2043 35)) (and (not (= var2043 34)) true)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) ; Intersect: Cond: i0 == 110  and Intersect: Negate: Cond: i0 == 109   and Intersect: Negate: Cond: i0 == 108   and Intersect: Negate: Cond: i0 == 107   and Intersect: Negate: Cond: i0 == 106   and Intersect: Negate: Cond: i0 == 105   and Intersect: Negate: Cond: i0 == 104   and Intersect: Negate: Cond: i0 == 103   and Intersect: Negate: Cond: i0 == 102   and Intersect: Negate: Cond: i0 == 101   and Intersect: Negate: Cond: i0 == 100   and Intersect: Negate: Cond: i0 == 99   and Intersect: Negate: Cond: i0 == 98   and Intersect: Negate: Cond: i0 == 97   and Intersect: Negate: Cond: i0 == 96   and Intersect: Negate: Cond: i0 == 95   and Intersect: Negate: Cond: i0 == 94   and Intersect: Negate: Cond: i0 == 93   and Intersect: Negate: Cond: i0 == 92   and Intersect: Negate: Cond: i0 == 91   and Intersect: Negate: Cond: i0 == 90   and Intersect: Negate: Cond: i0 == 89   and Intersect: Negate: Cond: i0 == 88   and Intersect: Negate: Cond: i0 == 87   and Intersect: Negate: Cond: i0 == 86   and Intersect: Negate: Cond: i0 == 85   and Intersect: Negate: Cond: i0 == 84   and Intersect: Negate: Cond: i0 == 83   and Intersect: Negate: Cond: i0 == 82   and Intersect: Negate: Cond: i0 == 81   and Intersect: Negate: Cond: i0 == 80   and Intersect: Negate: Cond: i0 == 79   and Intersect: Negate: Cond: i0 == 78   and Intersect: Negate: Cond: i0 == 77   and Intersect: Negate: Cond: i0 == 76   and Intersect: Negate: Cond: i0 == 75   and Intersect: Negate: Cond: i0 == 74   and Intersect: Negate: Cond: i0 == 73   and Intersect: Negate: Cond: i0 == 72   and Intersect: Negate: Cond: i0 == 71   and Intersect: Negate: Cond: i0 == 70   and Intersect: Negate: Cond: i0 == 69   and Intersect: Negate: Cond: i0 == 68   and Intersect: Negate: Cond: i0 == 67   and Intersect: Negate: Cond: i0 == 66   and Intersect: Negate: Cond: i0 == 65   and Intersect: Negate: Cond: i0 == 64   and Intersect: Negate: Cond: i0 == 63   and Intersect: Negate: Cond: i0 == 62   and Intersect: Negate: Cond: i0 == 61   and Intersect: Negate: Cond: i0 == 60   and Intersect: Negate: Cond: i0 == 59   and Intersect: Negate: Cond: i0 == 58   and Intersect: Negate: Cond: i0 == 57   and Intersect: Negate: Cond: i0 == 56   and Intersect: Negate: Cond: i0 == 55   and Intersect: Negate: Cond: i0 == 54   and Intersect: Negate: Cond: i0 == 53   and Intersect: Negate: Cond: i0 == 52   and Intersect: Negate: Cond: i0 == 51   and Intersect: Negate: Cond: i0 == 50   and Intersect: Negate: Cond: i0 == 49   and Intersect: Negate: Cond: i0 == 48   and Intersect: Negate: Cond: i0 == 47   and Intersect: Negate: Cond: i0 == 46   and Intersect: Negate: Cond: i0 == 45   and Intersect: Negate: Cond: i0 == 44   and Intersect: Negate: Cond: i0 == 43   and Intersect: Negate: Cond: i0 == 42   and Intersect: Negate: Cond: i0 == 41   and Intersect: Negate: Cond: i0 == 40   and Intersect: Negate: Cond: i0 == 39   and Intersect: Negate: Cond: i0 == 38   and Intersect: Negate: Cond: i0 == 37   and Intersect: Negate: Cond: i0 == 36   and Intersect: Negate: Cond: i0 == 35   and Intersect: Negate: Cond: i0 == 34   and Non Conditional                                                                             
 ; Statement: return 10 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var1942=com.alibaba.fastjson2.JSONReader, var3572=r1, var2043=i0}
; {com.alibaba.fastjson2.JSONReader=var1942, r1=var3572, i0=var2043}
;seq 
;cnt {}
;stmts r1 := @this: com.alibaba.fastjson2.JSONReader;	i0 := @parameter0: int;	tableswitch(i0) {     case 34: goto $c1 = (char) i0;     case 35: goto $c1 = (char) i0;     case 36: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 37: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 38: goto $c1 = (char) i0;     case 39: goto $c1 = (char) i0;     case 40: goto $c1 = (char) i0;     case 41: goto $c1 = (char) i0;     case 42: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 43: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 44: goto $c1 = (char) i0;     case 45: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 46: goto $c1 = (char) i0;     case 47: goto $c1 = (char) i0;     case 48: goto return 0;     case 49: goto return 1;     case 50: goto return 2;     case 51: goto return 3;     case 52: goto return 4;     case 53: goto return 5;     case 54: goto return 6;     case 55: goto return 7;     case 56: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 57: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 58: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 59: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 60: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 61: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 62: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 63: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 64: goto $c1 = (char) i0;     case 65: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 66: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 67: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 68: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 69: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 70: goto return 12;     case 71: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 72: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 73: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 74: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 75: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 76: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 77: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 78: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 79: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 80: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 81: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 82: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 83: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 84: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 85: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 86: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 87: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 88: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 89: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 90: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 91: goto $c1 = (char) i0;     case 92: goto $c1 = (char) i0;     case 93: goto $c1 = (char) i0;     case 94: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 95: goto $c1 = (char) i0;     case 96: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 97: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 98: goto return 8;     case 99: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 100: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 101: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 102: goto return 12;     case 103: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 104: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 105: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 106: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 107: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 108: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 109: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 110: goto return 10;     case 111: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 112: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 113: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 114: goto return 13;     case 115: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 116: goto return 9;     case 117: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 118: goto return 11;     default: goto $r0 = new com.alibaba.fastjson2.JSONException; };	return 10
;block_num 2