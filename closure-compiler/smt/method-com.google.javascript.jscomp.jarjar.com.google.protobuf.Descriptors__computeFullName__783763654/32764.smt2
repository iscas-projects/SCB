(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2967 0)
(declare-sort var471 0)
(declare-sort var3040 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getFullName/-1302123061 (var471) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2967 var2967)
(declare-const null-var471 var471)
(declare-const null-String String)
(declare-const var98 var2967) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor 
(assert (not (= var98 null-var2967)))
(declare-const var1233 var471) ; Statement: r0 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor 
(assert (not (= var1233 null-var471)))
(declare-const var800 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var800 null-String)))
 ; Statement: if r0 == null goto r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: java.lang.String getPackage()>() 
(assert (not (= var1233 null-var471))) ; Negate: Cond: r0 == null  
(define-const var3311 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3311)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3311!1 String)
(assert (= var3311!1 ""))
(assert true)
(define-const var2002 String (getFullName/-1302123061 var1233)) ; Statement: $r10 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: java.lang.String getFullName()>() 
(assert true)
(define-const var597 String (append/672562846 var3311!1 var2002)) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var3311!2 String)
(assert (= var3311!2 (str.++ var3311!1 var2002)))
(assert true)
(define-const var1954 String (append/-1166366385 var597 46)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var597!1 String)
(assert (str.prefixof var597 var597!1))
(assert true)
(define-const var3046 String (append/672562846 var1954 var800)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1954!1 String)
(assert (= var1954!1 (str.++ var1954 var800)))
(assert true)
(define-const var3846 String (toString/-2075883882 var3046)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getFullName/-1302123061=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2967=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor, var98=r1, var471=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor, var1233=r0, var800=r3, var3040=null_type, var3311=$r9, var2002=$r10, var597=$r11, var1954=$r12, var3046=$r13, var3846=$r14}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor=var2967, r1=var98, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor=var471, r0=var1233, r3=var800, null_type=var3040, $r9=var3311, $r10=var2002, $r11=var597, $r12=var1954, $r13=var3046, $r14=var3846}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor;	r0 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor;	r3 := @parameter2: java.lang.String;	if r0 == null goto r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: java.lang.String getPackage()>();	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor: java.lang.String getFullName()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 2