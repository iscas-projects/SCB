(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var672 0)
(declare-sort var3777 0)
(declare-sort var3196 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun download/139483459 (var672 String var3196) void)
(declare-const null-var672 var672)
(declare-const null-String String)
(declare-const null-var3196 var3196)
(declare-const var531 var672) ; Statement: r0 := @this: cn.hutool.extra.ssh.SshjSftp 
(assert (not (= var531 null-var672)))
(declare-const var2169 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2169 null-String)))
(declare-const var3443 var3196) ; Statement: r7 := @parameter1: java.io.File 
(assert (not (= var3443 null-var3196)))
(declare-const var2564 String) ; Statement: r4 := @parameter2: java.lang.String 
(assert (not (= var2564 null-String)))
(define-const var323 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var323)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var323!1 String)
(assert (= var323!1 ""))
(assert true)
(define-const var3352 String (append/672562846 var323!1 var2169)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var323!2 String)
(assert (= var323!2 (str.++ var323!1 var2169)))
(assert true)
(define-const var3452 String (append/672562846 var3352 "/")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/") 
(declare-const var3352!1 String)
(assert (= var3352!1 (str.++ var3352 "/")))
(assert true)
(define-const var337 String (append/672562846 var3452 var2564)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3452!1 String)
(assert (= var3452!1 (str.++ var3452 var2564)))
(assert true)
(define-const var2746 String (toString/-2075883882 var337)) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (download/139483459 var531 var2746 var3443)) ; Statement: virtualinvoke r0.<cn.hutool.extra.ssh.SshjSftp: void download(java.lang.String,java.io.File)>($r8, r7) 

(declare-const var531!1 var672)
(declare-const var2746!1 String)
(declare-const var3443!1 var3196)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), download/139483459=([cn.hutool.extra.ssh.SshjSftp, java.lang.String, java.io.File], void)}
; {var672=cn.hutool.extra.ssh.SshjSftp, var531=r0, var2169=r2, var3777=null_type, var3196=java.io.File, var3443=r7, var2564=r4, var323=$r1, var3352=$r3, var3452=$r5, var337=$r6, var2746=$r8}
; {cn.hutool.extra.ssh.SshjSftp=var672, r0=var531, r2=var2169, null_type=var3777, java.io.File=var3196, r7=var3443, r4=var2564, $r1=var323, $r3=var3352, $r5=var3452, $r6=var337, $r8=var2746}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: cn.hutool.extra.ssh.SshjSftp;	r2 := @parameter0: java.lang.String;	r7 := @parameter1: java.io.File;	r4 := @parameter2: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("/");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<cn.hutool.extra.ssh.SshjSftp: void download(java.lang.String,java.io.File)>($r8, r7);	return
;block_num 1