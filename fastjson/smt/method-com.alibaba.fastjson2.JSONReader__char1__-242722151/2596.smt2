(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2117 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var2117 var2117)
(declare-const null-Int Int)
(declare-const var3344 var2117) ; Statement: r1 := @this: com.alibaba.fastjson2.JSONReader 
(assert (not (= var3344 null-var2117)))
(declare-const var2086 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2086 null-Int)))
 ; Statement: tableswitch(i0) {     case 34: goto $c1 = (char) i0;     case 35: goto $c1 = (char) i0;     case 36: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 37: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 38: goto $c1 = (char) i0;     case 39: goto $c1 = (char) i0;     case 40: goto $c1 = (char) i0;     case 41: goto $c1 = (char) i0;     case 42: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 43: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 44: goto $c1 = (char) i0;     case 45: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 46: goto $c1 = (char) i0;     case 47: goto $c1 = (char) i0;     case 48: goto return 0;     case 49: goto return 1;     case 50: goto return 2;     case 51: goto return 3;     case 52: goto return 4;     case 53: goto return 5;     case 54: goto return 6;     case 55: goto return 7;     case 56: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 57: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 58: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 59: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 60: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 61: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 62: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 63: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 64: goto $c1 = (char) i0;     case 65: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 66: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 67: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 68: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 69: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 70: goto return 12;     case 71: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 72: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 73: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 74: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 75: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 76: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 77: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 78: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 79: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 80: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 81: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 82: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 83: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 84: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 85: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 86: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 87: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 88: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 89: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 90: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 91: goto $c1 = (char) i0;     case 92: goto $c1 = (char) i0;     case 93: goto $c1 = (char) i0;     case 94: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 95: goto $c1 = (char) i0;     case 96: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 97: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 98: goto return 8;     case 99: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 100: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 101: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 102: goto return 12;     case 103: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 104: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 105: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 106: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 107: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 108: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 109: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 110: goto return 10;     case 111: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 112: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 113: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 114: goto return 13;     case 115: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 116: goto return 9;     case 117: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 118: goto return 11;     default: goto $r0 = new com.alibaba.fastjson2.JSONException; } 
(assert (and (= var2086 52) (and (not (= var2086 51)) (and (not (= var2086 50)) (and (not (= var2086 49)) (and (not (= var2086 48)) (and (not (= var2086 47)) (and (not (= var2086 46)) (and (not (= var2086 45)) (and (not (= var2086 44)) (and (not (= var2086 43)) (and (not (= var2086 42)) (and (not (= var2086 41)) (and (not (= var2086 40)) (and (not (= var2086 39)) (and (not (= var2086 38)) (and (not (= var2086 37)) (and (not (= var2086 36)) (and (not (= var2086 35)) (and (not (= var2086 34)) true)))))))))))))))))))) ; Intersect: Cond: i0 == 52  and Intersect: Negate: Cond: i0 == 51   and Intersect: Negate: Cond: i0 == 50   and Intersect: Negate: Cond: i0 == 49   and Intersect: Negate: Cond: i0 == 48   and Intersect: Negate: Cond: i0 == 47   and Intersect: Negate: Cond: i0 == 46   and Intersect: Negate: Cond: i0 == 45   and Intersect: Negate: Cond: i0 == 44   and Intersect: Negate: Cond: i0 == 43   and Intersect: Negate: Cond: i0 == 42   and Intersect: Negate: Cond: i0 == 41   and Intersect: Negate: Cond: i0 == 40   and Intersect: Negate: Cond: i0 == 39   and Intersect: Negate: Cond: i0 == 38   and Intersect: Negate: Cond: i0 == 37   and Intersect: Negate: Cond: i0 == 36   and Intersect: Negate: Cond: i0 == 35   and Intersect: Negate: Cond: i0 == 34   and Non Conditional                   
 ; Statement: return 4 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var2117=com.alibaba.fastjson2.JSONReader, var3344=r1, var2086=i0}
; {com.alibaba.fastjson2.JSONReader=var2117, r1=var3344, i0=var2086}
;seq 
;cnt {}
;stmts r1 := @this: com.alibaba.fastjson2.JSONReader;	i0 := @parameter0: int;	tableswitch(i0) {     case 34: goto $c1 = (char) i0;     case 35: goto $c1 = (char) i0;     case 36: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 37: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 38: goto $c1 = (char) i0;     case 39: goto $c1 = (char) i0;     case 40: goto $c1 = (char) i0;     case 41: goto $c1 = (char) i0;     case 42: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 43: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 44: goto $c1 = (char) i0;     case 45: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 46: goto $c1 = (char) i0;     case 47: goto $c1 = (char) i0;     case 48: goto return 0;     case 49: goto return 1;     case 50: goto return 2;     case 51: goto return 3;     case 52: goto return 4;     case 53: goto return 5;     case 54: goto return 6;     case 55: goto return 7;     case 56: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 57: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 58: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 59: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 60: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 61: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 62: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 63: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 64: goto $c1 = (char) i0;     case 65: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 66: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 67: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 68: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 69: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 70: goto return 12;     case 71: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 72: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 73: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 74: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 75: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 76: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 77: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 78: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 79: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 80: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 81: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 82: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 83: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 84: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 85: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 86: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 87: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 88: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 89: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 90: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 91: goto $c1 = (char) i0;     case 92: goto $c1 = (char) i0;     case 93: goto $c1 = (char) i0;     case 94: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 95: goto $c1 = (char) i0;     case 96: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 97: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 98: goto return 8;     case 99: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 100: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 101: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 102: goto return 12;     case 103: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 104: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 105: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 106: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 107: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 108: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 109: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 110: goto return 10;     case 111: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 112: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 113: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 114: goto return 13;     case 115: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 116: goto return 9;     case 117: goto $r0 = new com.alibaba.fastjson2.JSONException;     case 118: goto return 11;     default: goto $r0 = new com.alibaba.fastjson2.JSONException; };	return 4
;block_num 2