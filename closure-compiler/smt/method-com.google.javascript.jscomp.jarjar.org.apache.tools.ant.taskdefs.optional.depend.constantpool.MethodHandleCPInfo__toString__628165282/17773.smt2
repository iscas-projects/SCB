(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var315 0)
(declare-sort var3111 0)
(declare-sort var857 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isResolved/-1062758483 (var3111) Bool)
(declare-fun cast-from-var315-to-var3111 (var315) var3111)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun reference/-976891006 (var315) var3111)
(declare-fun toString/-522406933 (var857) String)
(declare-fun cast-from-var3111-to-var857 (var3111) var857)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var315 var315)
(declare-const var2368 var315) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.MethodHandleCPInfo 
(assert (not (= var2368 null-var315)))
(assert true)
(define-const var1064 Bool (isResolved/-1062758483 (cast-from-var315-to-var3111 var2368))) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.MethodHandleCPInfo: boolean isResolved()>() 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.StringBuilder 
(assert (not (= (ite var1064 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var436 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var436)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var436!1 String)
(assert (= var436!1 ""))
(assert true)
(define-const var1175 String (append/672562846 var436!1 "MethodHandle : ")) ; Statement: $r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("MethodHandle : ") 
(declare-const var436!2 String)
(assert (= var436!2 (str.++ var436!1 "MethodHandle : ")))
(define-const var3599 var3111 (reference/-976891006 var2368)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.MethodHandleCPInfo: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantPoolEntry reference> 
(assert true)
(define-const var3398 String (toString/-522406933 (cast-from-var3111-to-var857 var3599))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var1396 String (append/672562846 var1175 var3398)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var1175!1 String)
(assert (= var1175!1 (str.++ var1175 var3398)))
(assert true)
(define-const var1121 String (toString/-2075883882 var1396)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {isResolved/-1062758483=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantPoolEntry], boolean), cast-from-var315-to-var3111=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.MethodHandleCPInfo], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantPoolEntry), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), reference/-976891006=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.MethodHandleCPInfo], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantPoolEntry), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var3111-to-var857=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantPoolEntry], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var315=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.MethodHandleCPInfo, var2368=r0, var3111=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantPoolEntry, var1064=$z0, var436=$r8, var1175=$r11, var3599=$r9, var857=java.lang.Object, var3398=$r10, var1396=$r12, var1121=$r13}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.MethodHandleCPInfo=var315, r0=var2368, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantPoolEntry=var3111, $z0=var1064, $r8=var436, $r11=var1175, $r9=var3599, java.lang.Object=var857, $r10=var3398, $r12=var1396, $r13=var1121}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.MethodHandleCPInfo;	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.MethodHandleCPInfo: boolean isResolved()>();	if $z0 == 0 goto $r1 = new java.lang.StringBuilder;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("MethodHandle : ");	$r9 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.MethodHandleCPInfo: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.depend.constantpool.ConstantPoolEntry reference>;	$r10 = virtualinvoke $r9.<java.lang.Object: java.lang.String toString()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 2