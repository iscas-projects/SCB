(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2765 0)
(declare-sort var719 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isResolved/-1062758483 (var719) Bool)
(declare-fun cast-from-var2765-to-var719 (var2765) var719)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun classIndex/-1731426990 (var2765) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun nameAndTypeIndex/-1731426990 (var2765) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2765 var2765)
(declare-const var3162 var2765) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InterfaceMethodRefCPInfo 
(assert (not (= var3162 null-var2765)))
(assert true)
(define-const var2196 Bool (isResolved/-1062758483 (cast-from-var2765-to-var719 var3162))) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InterfaceMethodRefCPInfo: boolean isResolved()>() 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.StringBuilder 
(assert (= (ite var2196 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3438 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3438)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3438!1 String)
(assert (= var3438!1 ""))
(assert true)
(define-const var1256 String (append/672562846 var3438!1 "InterfaceMethod : Class index = ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("InterfaceMethod : Class index = ") 
(declare-const var3438!2 String)
(assert (= var3438!2 (str.++ var3438!1 "InterfaceMethod : Class index = ")))
(define-const var128 Int (classIndex/-1731426990 var3162)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InterfaceMethodRefCPInfo: int classIndex> 
(assert true)
(define-const var2699 String (append/-1001720160 var1256 var128)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var1256!1 String)
(assert (str.prefixof var1256 var1256!1))
(assert true)
(define-const var3382 String (append/672562846 var2699 ", name and type index = ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", name and type index = ") 
(declare-const var2699!1 String)
(assert (= var2699!1 (str.++ var2699 ", name and type index = ")))
(define-const var816 Int (nameAndTypeIndex/-1731426990 var3162)) ; Statement: $i1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InterfaceMethodRefCPInfo: int nameAndTypeIndex> 
(assert true)
(define-const var2688 String (append/-1001720160 var3382 var816)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var3382!1 String)
(assert (str.prefixof var3382 var3382!1))
(assert true)
(define-const var1419 String (toString/-2075883882 var2688)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {isResolved/-1062758483=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantPoolEntry], boolean), cast-from-var2765-to-var719=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InterfaceMethodRefCPInfo], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantPoolEntry), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), classIndex/-1731426990=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InterfaceMethodRefCPInfo], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), nameAndTypeIndex/-1731426990=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InterfaceMethodRefCPInfo], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2765=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InterfaceMethodRefCPInfo, var3162=r0, var719=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantPoolEntry, var2196=$z0, var3438=$r1, var1256=$r2, var128=$i0, var2699=$r3, var3382=$r4, var816=$i1, var2688=$r5, var1419=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InterfaceMethodRefCPInfo=var2765, r0=var3162, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantPoolEntry=var719, $z0=var2196, $r1=var3438, $r2=var1256, $i0=var128, $r3=var2699, $r4=var3382, $i1=var816, $r5=var2688, $r6=var1419}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InterfaceMethodRefCPInfo;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InterfaceMethodRefCPInfo: boolean isResolved()>();	if $z0 == 0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("InterfaceMethod : Class index = ");	$i0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InterfaceMethodRefCPInfo: int classIndex>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", name and type index = ");	$i1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InterfaceMethodRefCPInfo: int nameAndTypeIndex>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 2