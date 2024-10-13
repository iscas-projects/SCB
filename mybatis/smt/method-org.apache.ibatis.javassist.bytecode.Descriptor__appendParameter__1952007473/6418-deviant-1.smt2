(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2592 0)
(declare-sort var1914 0)
(declare-sort var502 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var502_toDescriptor/-1436769534 (String var2592) void)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2592 var2592)
(declare-const null-String String)
(declare-const var1502 var2592) ; Statement: r3 := @parameter0: org.apache.ibatis.javassist.CtClass 
(assert (not (= var1502 null-var2592)))
(declare-const var2306 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2306 null-String)))
(assert true)
(define-const var3991 Int (indexOf/-1037706067 var2306 41)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(41) 
 ; Statement: if i0 >= 0 goto $r1 = new java.lang.StringBuilder 
(assert (>= var3991 0)) ; Cond: i0 >= 0 
(define-const var139 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var139)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var139!1 String)
(assert (= var139!1 ""))
(assert (and true (and (>= 0 0) (>= (str.len var2306) var3991) (>= var3991 0))))
(define-const var3912 String (substring/-1240304868 var2306 0 var3991)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert true)
;(assert (append/672562846 var139!1 var3912)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var139!2 String)
(assert (= var139!2 (str.++ var139!1 var3912)))
;(assert (var502_toDescriptor/-1436769534 var139!2 var1502)) ; Statement: staticinvoke <org.apache.ibatis.javassist.bytecode.Descriptor: void toDescriptor(java.lang.StringBuilder,org.apache.ibatis.javassist.CtClass)>($r1, r3) 

(declare-const var139!3 String)
(declare-const var1502!1 var2592)
(assert (not (and true (and (>= var3991 0) (>= (str.len var2306) var3991)))))
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), substring/-1240304868=([java.lang.String, int, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var502_toDescriptor/-1436769534=([java.lang.StringBuilder, org.apache.ibatis.javassist.CtClass], void), substring/850833817=([java.lang.String, int], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2592=org.apache.ibatis.javassist.CtClass, var1502=r3, var2306=r0, var1914=null_type, var3991=i0, var139=$r1, var3912=$r2, var502=org.apache.ibatis.javassist.bytecode.Descriptor, var3103=$r4, var3444=$r5}
; {org.apache.ibatis.javassist.CtClass=var2592, r3=var1502, r0=var2306, null_type=var1914, i0=var3991, $r1=var139, $r2=var3912, org.apache.ibatis.javassist.bytecode.Descriptor=var502, $r4=var3103, $r5=var3444}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @parameter0: org.apache.ibatis.javassist.CtClass;	r0 := @parameter1: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(41);	if i0 >= 0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	staticinvoke <org.apache.ibatis.javassist.bytecode.Descriptor: void toDescriptor(java.lang.StringBuilder,org.apache.ibatis.javassist.CtClass)>($r1, r3);	$r4 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(i0);	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 2