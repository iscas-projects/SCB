(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3922 0)
(declare-sort var1146 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1146_getProperty/258823597 (String) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var3922 var3922)
(declare-const var3121 var3922) ; Statement: r9 := @this: org.apache.log4j.lf5.viewer.configure.MRUFileManager 
(assert (not (= var3121 null-var3922)))
(define-const var2159 String (var1146_getProperty/258823597 "user.home")) ; Statement: r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("user.home") 
(define-const var3904 String (var1146_getProperty/258823597 "file.separator")) ; Statement: r1 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("file.separator") 
(define-const var865 String String-init) ; Statement: $r2 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var865)) ; Statement: specialinvoke $r2.<java.lang.StringBuffer: void <init>()>() 

(declare-const var865!1 String)
(assert true)
(define-const var3860 String (append/1560614132 var865!1 var2159)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r0) 
(declare-const var865!2 String)
(assert (str.prefixof var865!1 var865!2))
(assert true)
(define-const var3672 String (append/1560614132 var3860 var3904)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1) 
(declare-const var3860!1 String)
(assert (str.prefixof var3860 var3860!1))
(assert true)
(define-const var1800 String (append/1560614132 var3672 "lf5")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("lf5") 
(declare-const var3672!1 String)
(assert (str.prefixof var3672 var3672!1))
(assert true)
(define-const var3676 String (append/1560614132 var1800 var3904)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1) 
(declare-const var1800!1 String)
(assert (str.prefixof var1800 var1800!1))
(assert true)
(define-const var62 String (append/1560614132 var3676 "mru_file_manager")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("mru_file_manager") 
(declare-const var3676!1 String)
(assert (str.prefixof var3676 var3676!1))
(assert true)
(define-const var3331 String (toString/-222306083 var62)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var1146_getProperty/258823597=([java.lang.String], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var3922=org.apache.log4j.lf5.viewer.configure.MRUFileManager, var3121=r9, var1146=java.lang.System, var2159=r0, var3904=r1, var865=$r2, var3860=$r3, var3672=$r4, var1800=$r5, var3676=$r6, var62=$r7, var3331=$r8}
; {org.apache.log4j.lf5.viewer.configure.MRUFileManager=var3922, r9=var3121, java.lang.System=var1146, r0=var2159, r1=var3904, $r2=var865, $r3=var3860, $r4=var3672, $r5=var1800, $r6=var3676, $r7=var62, $r8=var3331}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 5,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r9 := @this: org.apache.log4j.lf5.viewer.configure.MRUFileManager;	r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("user.home");	r1 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("file.separator");	$r2 = new java.lang.StringBuffer;	specialinvoke $r2.<java.lang.StringBuffer: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r0);	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1);	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("lf5");	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r1);	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("mru_file_manager");	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	return $r8
;block_num 1