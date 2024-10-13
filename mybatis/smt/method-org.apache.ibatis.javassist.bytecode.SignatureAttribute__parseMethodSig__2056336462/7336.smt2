(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3827 0)
(declare-sort var1614 0)
(declare-sort var2056 0)
(declare-sort var1820 0)
(declare-sort var2932 0)
(declare-sort var1381 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1614-init () var1614)
(declare-fun <init>/1670321862 (var1614 var2056) void)
(declare-fun var2932_parseTypeParams/-1788046673 (String var1614) (Array Int var1820))
(declare-fun position/442744389 (var1614) Int)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2932_error/-1216190606 (String) var1381)
(declare-const null-String String)
(declare-const null-NullType var3827)
(declare-const null-var2056 var2056)
(declare-const null-var1614 var1614)
(declare-const var970 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var970 null-String)))
(define-const var2673 var1614 var1614-init) ; Statement: $r17 = new org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor 
(assert true)
;(assert (<init>/1670321862 var2673 null-var2056)) ; Statement: specialinvoke $r17.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: void <init>(org.apache.ibatis.javassist.bytecode.SignatureAttribute$1)>(null) 

(declare-const var2673!1 var1614)
(declare-const var3741 var3827)
(define-const var1858 (Array Int var1820) (var2932_parseTypeParams/-1788046673 var970 var2673!1)) ; Statement: r2 = staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute: org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter[] parseTypeParams(java.lang.String,org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor)>(r1, $r17) 
(define-const var2912 Int (position/442744389 var2673!1)) ; Statement: $i0 = $r17.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position> 
(define-const var2797 Int (+ var2912 1)) ; Statement: $i1 = $i0 + 1 
(declare-const var2673!2 var1614)
(assert (not (= var2673!2 null-var1614)))
(assert (= (position/442744389 var2673!2) var2797)) ; Statement: $r17.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position> = $i1 
(assert (and true (and (> (str.len var970) var2912) (<= 0 var2912))))
(define-const var3085 Int (charAt/698050440 var970 var2912)) ; Statement: $c2 = virtualinvoke r1.<java.lang.String: char charAt(int)>($i0) 
(define-const var646 Int (cast-from-Int-to-Int var3085)) ; Statement: $i15 = (int) $c2 
 ; Statement: if $i15 == 40 goto $r18 = new java.util.ArrayList 
(assert (not (= var646 40))) ; Negate: Cond: $i15 == 40  
(define-const var1935 var1381 (var2932_error/-1216190606 var970)) ; Statement: $r13 = staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute: org.apache.ibatis.javassist.bytecode.BadBytecode error(java.lang.String)>(r1) 
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var1614-init=([], org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor), <init>/1670321862=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor, org.apache.ibatis.javassist.bytecode.SignatureAttribute$1], void), var2932_parseTypeParams/-1788046673=([java.lang.String, org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor], org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter[]), position/442744389=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), var2932_error/-1216190606=([java.lang.String], org.apache.ibatis.javassist.bytecode.BadBytecode)}
; {var970=r1, var3827=null_type, var1614=org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor, var2673=$r17, var2056=org.apache.ibatis.javassist.bytecode.SignatureAttribute$1, var3741=null, var1820=org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter, var2932=org.apache.ibatis.javassist.bytecode.SignatureAttribute, var1858=r2, var2912=$i0, var2797=$i1, var3085=$c2, var646=$i15, var1381=org.apache.ibatis.javassist.bytecode.BadBytecode, var1935=$r13}
; {r1=var970, null_type=var3827, org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor=var1614, $r17=var2673, org.apache.ibatis.javassist.bytecode.SignatureAttribute$1=var2056, null=var3741, org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter=var1820, org.apache.ibatis.javassist.bytecode.SignatureAttribute=var2932, r2=var1858, $i0=var2912, $i1=var2797, $c2=var3085, $i15=var646, org.apache.ibatis.javassist.bytecode.BadBytecode=var1381, $r13=var1935}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r17 = new org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor;	specialinvoke $r17.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: void <init>(org.apache.ibatis.javassist.bytecode.SignatureAttribute$1)>(null);	r2 = staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute: org.apache.ibatis.javassist.bytecode.SignatureAttribute$TypeParameter[] parseTypeParams(java.lang.String,org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor)>(r1, $r17);	$i0 = $r17.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position>;	$i1 = $i0 + 1;	$r17.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$Cursor: int position> = $i1;	$c2 = virtualinvoke r1.<java.lang.String: char charAt(int)>($i0);	$i15 = (int) $c2;	if $i15 == 40 goto $r18 = new java.util.ArrayList;	$r13 = staticinvoke <org.apache.ibatis.javassist.bytecode.SignatureAttribute: org.apache.ibatis.javassist.bytecode.BadBytecode error(java.lang.String)>(r1);	throw $r13
;block_num 2