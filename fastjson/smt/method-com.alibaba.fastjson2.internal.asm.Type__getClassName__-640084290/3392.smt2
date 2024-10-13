(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3285 0)
(declare-sort var3329 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sort/-537476865 (var3285) Int)
(declare-fun var3329-init () var3329)
(declare-fun <init>/-208190597 (var3329) void)
(declare-const null-var3285 var3285)
(declare-const var158 var3285) ; Statement: r0 := @this: com.alibaba.fastjson2.internal.asm.Type 
(assert (not (= var158 null-var3285)))
(define-const var3025 Int (sort/-537476865 var158)) ; Statement: $i0 = r0.<com.alibaba.fastjson2.internal.asm.Type: int sort> 
 ; Statement: tableswitch($i0) {     case 0: goto return "void";     case 1: goto return "boolean";     case 2: goto return "char";     case 3: goto return "byte";     case 4: goto return "short";     case 5: goto return "int";     case 6: goto return "float";     case 7: goto return "long";     case 8: goto return "double";     case 9: goto $r4 = r0.<com.alibaba.fastjson2.internal.asm.Type: java.lang.String valueBuffer>;     case 10: goto $r1 = r0.<com.alibaba.fastjson2.internal.asm.Type: java.lang.String valueBuffer>;     case 11: goto $r11 = new java.lang.AssertionError;     case 12: goto $r1 = r0.<com.alibaba.fastjson2.internal.asm.Type: java.lang.String valueBuffer>;     default: goto $r11 = new java.lang.AssertionError; } 
(assert (and (not (= var3025 10)) (and (not (= var3025 9)) (and (not (= var3025 8)) (and (not (= var3025 7)) (and (not (= var3025 6)) (and (not (= var3025 5)) (and (not (= var3025 4)) (and (not (= var3025 3)) (and (not (= var3025 2)) (and (not (= var3025 1)) (and (not (= var3025 0)) true)))))))))))) ; Intersect: Negate: Cond: $i0 == 10   and Intersect: Negate: Cond: $i0 == 9   and Intersect: Negate: Cond: $i0 == 8   and Intersect: Negate: Cond: $i0 == 7   and Intersect: Negate: Cond: $i0 == 6   and Intersect: Negate: Cond: $i0 == 5   and Intersect: Negate: Cond: $i0 == 4   and Intersect: Negate: Cond: $i0 == 3   and Intersect: Negate: Cond: $i0 == 2   and Intersect: Negate: Cond: $i0 == 1   and Intersect: Negate: Cond: $i0 == 0   and Non Conditional           
(define-const var1023 var3329 var3329-init) ; Statement: $r11 = new java.lang.AssertionError 
(assert true)
;(assert (<init>/-208190597 var1023)) ; Statement: specialinvoke $r11.<java.lang.AssertionError: void <init>()>() 

(declare-const var1023!1 var3329)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {sort/-537476865=([com.alibaba.fastjson2.internal.asm.Type], int), var3329-init=([], java.lang.AssertionError), <init>/-208190597=([java.lang.AssertionError], void)}
; {var3285=com.alibaba.fastjson2.internal.asm.Type, var158=r0, var3025=$i0, var3329=java.lang.AssertionError, var1023=$r11}
; {com.alibaba.fastjson2.internal.asm.Type=var3285, r0=var158, $i0=var3025, java.lang.AssertionError=var3329, $r11=var1023}
;seq 
;cnt {}
;stmts r0 := @this: com.alibaba.fastjson2.internal.asm.Type;	$i0 = r0.<com.alibaba.fastjson2.internal.asm.Type: int sort>;	tableswitch($i0) {     case 0: goto return "void";     case 1: goto return "boolean";     case 2: goto return "char";     case 3: goto return "byte";     case 4: goto return "short";     case 5: goto return "int";     case 6: goto return "float";     case 7: goto return "long";     case 8: goto return "double";     case 9: goto $r4 = r0.<com.alibaba.fastjson2.internal.asm.Type: java.lang.String valueBuffer>;     case 10: goto $r1 = r0.<com.alibaba.fastjson2.internal.asm.Type: java.lang.String valueBuffer>;     case 11: goto $r11 = new java.lang.AssertionError;     case 12: goto $r1 = r0.<com.alibaba.fastjson2.internal.asm.Type: java.lang.String valueBuffer>;     default: goto $r11 = new java.lang.AssertionError; };	$r11 = new java.lang.AssertionError;	specialinvoke $r11.<java.lang.AssertionError: void <init>()>();	throw $r11
;block_num 2