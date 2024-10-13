(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3587 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sort/-537476865 (var3587) Int)
(declare-fun valueBuffer/-537476865 (var3587) String)
(declare-fun valueBegin/-537476865 (var3587) Int)
(declare-fun valueEnd/-537476865 (var3587) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-const null-var3587 var3587)
(declare-const var562 var3587) ; Statement: r0 := @this: com.alibaba.fastjson2.internal.asm.Type 
(assert (not (= var562 null-var3587)))
(define-const var802 Int (sort/-537476865 var562)) ; Statement: $i0 = r0.<com.alibaba.fastjson2.internal.asm.Type: int sort> 
 ; Statement: tableswitch($i0) {     case 0: goto return "void";     case 1: goto return "boolean";     case 2: goto return "char";     case 3: goto return "byte";     case 4: goto return "short";     case 5: goto return "int";     case 6: goto return "float";     case 7: goto return "long";     case 8: goto return "double";     case 9: goto $r4 = r0.<com.alibaba.fastjson2.internal.asm.Type: java.lang.String valueBuffer>;     case 10: goto $r1 = r0.<com.alibaba.fastjson2.internal.asm.Type: java.lang.String valueBuffer>;     case 11: goto $r11 = new java.lang.AssertionError;     case 12: goto $r1 = r0.<com.alibaba.fastjson2.internal.asm.Type: java.lang.String valueBuffer>;     default: goto $r11 = new java.lang.AssertionError; } 
(assert (and (= var802 10) (and (not (= var802 9)) (and (not (= var802 8)) (and (not (= var802 7)) (and (not (= var802 6)) (and (not (= var802 5)) (and (not (= var802 4)) (and (not (= var802 3)) (and (not (= var802 2)) (and (not (= var802 1)) (and (not (= var802 0)) true)))))))))))) ; Intersect: Cond: $i0 == 10  and Intersect: Negate: Cond: $i0 == 9   and Intersect: Negate: Cond: $i0 == 8   and Intersect: Negate: Cond: $i0 == 7   and Intersect: Negate: Cond: $i0 == 6   and Intersect: Negate: Cond: $i0 == 5   and Intersect: Negate: Cond: $i0 == 4   and Intersect: Negate: Cond: $i0 == 3   and Intersect: Negate: Cond: $i0 == 2   and Intersect: Negate: Cond: $i0 == 1   and Intersect: Negate: Cond: $i0 == 0   and Non Conditional           
(define-const var2147 String (valueBuffer/-537476865 var562)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.internal.asm.Type: java.lang.String valueBuffer> 
(define-const var1792 Int (valueBegin/-537476865 var562)) ; Statement: $i2 = r0.<com.alibaba.fastjson2.internal.asm.Type: int valueBegin> 
(define-const var841 Int (valueEnd/-537476865 var562)) ; Statement: $i1 = r0.<com.alibaba.fastjson2.internal.asm.Type: int valueEnd> 
(assert (not (and true (and (>= var1792 0) (>= (str.len var2147) var841) (>= var841 var1792)))))
(check-sat)
(get-model)
(get-unsat-core)
; {sort/-537476865=([com.alibaba.fastjson2.internal.asm.Type], int), valueBuffer/-537476865=([com.alibaba.fastjson2.internal.asm.Type], java.lang.String), valueBegin/-537476865=([com.alibaba.fastjson2.internal.asm.Type], int), valueEnd/-537476865=([com.alibaba.fastjson2.internal.asm.Type], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), replace/1524665721=([java.lang.String, char, char], java.lang.String)}
; {var3587=com.alibaba.fastjson2.internal.asm.Type, var562=r0, var802=$i0, var2147=$r1, var1792=$i2, var841=$i1, var1644=$r2, var2300=$r3}
; {com.alibaba.fastjson2.internal.asm.Type=var3587, r0=var562, $i0=var802, $r1=var2147, $i2=var1792, $i1=var841, $r2=var1644, $r3=var2300}
;seq <java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: java.lang.String replace(char,char)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.internal.asm.Type;	$i0 = r0.<com.alibaba.fastjson2.internal.asm.Type: int sort>;	tableswitch($i0) {     case 0: goto return "void";     case 1: goto return "boolean";     case 2: goto return "char";     case 3: goto return "byte";     case 4: goto return "short";     case 5: goto return "int";     case 6: goto return "float";     case 7: goto return "long";     case 8: goto return "double";     case 9: goto $r4 = r0.<com.alibaba.fastjson2.internal.asm.Type: java.lang.String valueBuffer>;     case 10: goto $r1 = r0.<com.alibaba.fastjson2.internal.asm.Type: java.lang.String valueBuffer>;     case 11: goto $r11 = new java.lang.AssertionError;     case 12: goto $r1 = r0.<com.alibaba.fastjson2.internal.asm.Type: java.lang.String valueBuffer>;     default: goto $r11 = new java.lang.AssertionError; };	$r1 = r0.<com.alibaba.fastjson2.internal.asm.Type: java.lang.String valueBuffer>;	$i2 = r0.<com.alibaba.fastjson2.internal.asm.Type: int valueBegin>;	$i1 = r0.<com.alibaba.fastjson2.internal.asm.Type: int valueEnd>;	$r2 = virtualinvoke $r1.<java.lang.String: java.lang.String substring(int,int)>($i2, $i1);	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String replace(char,char)>(47, 46);	return $r3
;block_num 2