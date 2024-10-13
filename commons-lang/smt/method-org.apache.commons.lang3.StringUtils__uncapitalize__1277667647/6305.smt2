(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var520 0)
(declare-sort var2603 0)
(declare-sort var3495 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2603_length/1752045268 (String) Int)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun codePointAt/-1532245030 (String Int) Int)
(declare-fun var3495_toLowerCase/1002571586 (Int) Int)
(declare-const null-String String)
(declare-const var835 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var835 null-String)))
(define-const var2862 Int (var2603_length/1752045268 (cast-from-String-to-String var835))) ; Statement: i0 = staticinvoke <org.apache.commons.lang3.StringUtils: int length(java.lang.CharSequence)>(r0) 
 ; Statement: if i0 != 0 goto i1 = virtualinvoke r0.<java.lang.String: int codePointAt(int)>(0) 
(assert (not (= var2862 0))) ; Cond: i0 != 0 
(assert true)
(define-const var1339 Int (codePointAt/-1532245030 var835 0)) ; Statement: i1 = virtualinvoke r0.<java.lang.String: int codePointAt(int)>(0) 
(define-const var2163 Int (var3495_toLowerCase/1002571586 var1339)) ; Statement: i2 = staticinvoke <java.lang.Character: int toLowerCase(int)>(i1) 
 ; Statement: if i1 != i2 goto r1 = newarray (int)[i0] 
(assert (not (not (= var1339 var2163)))) ; Negate: Cond: i1 != i2  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2603_length/1752045268=([java.lang.CharSequence], int), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), codePointAt/-1532245030=([java.lang.String, int], int), var3495_toLowerCase/1002571586=([int], int)}
; {var835=r0, var520=null_type, var2603=org.apache.commons.lang3.StringUtils, var2862=i0, var1339=i1, var3495=java.lang.Character, var2163=i2}
; {r0=var835, null_type=var520, org.apache.commons.lang3.StringUtils=var2603, i0=var2862, i1=var1339, java.lang.Character=var3495, i2=var2163}
;seq <java.lang.String: int codePointAt(int)>
;cnt {"<java.lang.String: int codePointAt(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = staticinvoke <org.apache.commons.lang3.StringUtils: int length(java.lang.CharSequence)>(r0);	if i0 != 0 goto i1 = virtualinvoke r0.<java.lang.String: int codePointAt(int)>(0);	i1 = virtualinvoke r0.<java.lang.String: int codePointAt(int)>(0);	i2 = staticinvoke <java.lang.Character: int toLowerCase(int)>(i1);	if i1 != i2 goto r1 = newarray (int)[i0];	return r0
;block_num 3