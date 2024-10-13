(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1008 0)
(declare-sort var2033 0)
(declare-sort var1045 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1045_of/1621849684 (var1008) String)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1008 var1008)
(declare-const null-String String)
(declare-const var284 var1008) ; Statement: r2 := @parameter0: org.apache.ibatis.javassist.CtClass 
(assert (not (= var284 null-var1008)))
(declare-const var1185 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1185 null-String)))
(assert (not (and true (and (> (str.len var1185) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1045_of/1621849684=([org.apache.ibatis.javassist.CtClass], java.lang.String), substring/850833817=([java.lang.String, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1008=org.apache.ibatis.javassist.CtClass, var284=r2, var1185=r0, var2033=null_type, var94=$c0, var1209=$i1, var1858=$r9, var3463=$r4, var1045=org.apache.ibatis.javassist.bytecode.Descriptor, var2881=$r3, var1703=$r6, var1635=$r5, var3354=$r7, var3686=$r8}
; {org.apache.ibatis.javassist.CtClass=var1008, r2=var284, r0=var1185, null_type=var2033, $c0=var94, $i1=var1209, $r9=var1858, $r4=var3463, org.apache.ibatis.javassist.bytecode.Descriptor=var1045, $r3=var2881, $r6=var1703, $r5=var1635, $r7=var3354, $r8=var3686}
;seq <java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: org.apache.ibatis.javassist.CtClass;	r0 := @parameter1: java.lang.String;	$c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i1 = (int) $c0;	if $i1 == 40 goto $r9 = new java.lang.StringBuilder;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r3 = staticinvoke <org.apache.ibatis.javassist.bytecode.Descriptor: java.lang.String of(org.apache.ibatis.javassist.CtClass)>(r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(1);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 2