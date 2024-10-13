(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var714 0)
(declare-sort var3205 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isResolved/-1062758483 (var3205) Bool)
(declare-fun cast-from-var714-to-var3205 (var714) var3205)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun bootstrapMethodAttrIndex/-929069884 (var714) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun nameAndTypeIndex/-929069884 (var714) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var714 var714)
(declare-const var2374 var714) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InvokeDynamicCPInfo 
(assert (not (= var2374 null-var714)))
(assert true)
(define-const var1120 Bool (isResolved/-1062758483 (cast-from-var714-to-var3205 var2374))) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InvokeDynamicCPInfo: boolean isResolved()>() 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.StringBuilder 
(assert (= (ite var1120 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1901 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1901)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1901!1 String)
(assert (= var1901!1 ""))
(assert true)
(define-const var2438 String (append/672562846 var1901!1 "BootstrapMethodAttrIndex inx = ")) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("BootstrapMethodAttrIndex inx = ") 
(declare-const var1901!2 String)
(assert (= var1901!2 (str.++ var1901!1 "BootstrapMethodAttrIndex inx = ")))
(define-const var1601 Int (bootstrapMethodAttrIndex/-929069884 var2374)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InvokeDynamicCPInfo: int bootstrapMethodAttrIndex> 
(assert true)
(define-const var989 String (append/-1001720160 var2438 var1601)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var2438!1 String)
(assert (str.prefixof var2438 var2438!1))
(assert true)
(define-const var2725 String (append/672562846 var989 "NameAndType index = ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("NameAndType index = ") 
(declare-const var989!1 String)
(assert (= var989!1 (str.++ var989 "NameAndType index = ")))
(define-const var1656 Int (nameAndTypeIndex/-929069884 var2374)) ; Statement: $i1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InvokeDynamicCPInfo: int nameAndTypeIndex> 
(assert true)
(define-const var1993 String (append/-1001720160 var2725 var1656)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1) 
(declare-const var2725!1 String)
(assert (str.prefixof var2725 var2725!1))
(assert true)
(define-const var1300 String (toString/-2075883882 var1993)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {isResolved/-1062758483=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantPoolEntry], boolean), cast-from-var714-to-var3205=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InvokeDynamicCPInfo], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantPoolEntry), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), bootstrapMethodAttrIndex/-929069884=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InvokeDynamicCPInfo], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), nameAndTypeIndex/-929069884=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InvokeDynamicCPInfo], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var714=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InvokeDynamicCPInfo, var2374=r0, var3205=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantPoolEntry, var1120=$z0, var1901=$r1, var2438=$r2, var1601=$i0, var989=$r3, var2725=$r4, var1656=$i1, var1993=$r5, var1300=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InvokeDynamicCPInfo=var714, r0=var2374, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantPoolEntry=var3205, $z0=var1120, $r1=var1901, $r2=var2438, $i0=var1601, $r3=var989, $r4=var2725, $i1=var1656, $r5=var1993, $r6=var1300}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InvokeDynamicCPInfo;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InvokeDynamicCPInfo: boolean isResolved()>();	if $z0 == 0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("BootstrapMethodAttrIndex inx = ");	$i0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InvokeDynamicCPInfo: int bootstrapMethodAttrIndex>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("NameAndType index = ");	$i1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.InvokeDynamicCPInfo: int nameAndTypeIndex>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 2