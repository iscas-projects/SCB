(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2169 0)
(declare-sort var3917 0)
(declare-sort var1950 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun collectData/-883818796 (var2169 var3917) String)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2169 var2169)
(declare-const null-var3917 var3917)
(declare-const null-var1950 var1950)
(declare-const var3960 var2169) ; Statement: r0 := @this: lombok.javac.apt.Processor 
(assert (not (= var3960 null-var2169)))
(declare-const var1457 var3917) ; Statement: r1 := @parameter0: javax.annotation.processing.ProcessingEnvironment 
(assert (not (= var1457 null-var3917)))
(assert true)
(define-const var3346 String (collectData/-883818796 var3960 var1457)) ; Statement: r2 = specialinvoke r0.<lombok.javac.apt.Processor: java.lang.String collectData(javax.'annotation'.processing.ProcessingEnvironment)>(r1) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1726 var1950) ; Statement: $r4 := @caughtexception 
(assert (not (= var1726 null-var1950)))
(define-const var2071 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var2071 "Report:\n\n")) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>(java.lang.String)>("Report:\n\n") 
(declare-const var2071!1 String)
(assert (= var2071!1 "Report:\n\n"))
(assert true)
(define-const var3968 String (append/672562846 var2071!1 var3346)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2071!2 String)
(assert (= var2071!2 (str.++ var2071!1 var3346)))
(assert true)
(define-const var2724 String (toString/-2075883882 var3968)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {collectData/-883818796=([lombok.javac.apt.Processor, javax.annotation.processing.ProcessingEnvironment], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2169=lombok.javac.apt.Processor, var3960=r0, var3917=javax.annotation.processing.ProcessingEnvironment, var1457=r1, var3346=r2, var1950=java.lang.Exception, var1726=$r4, var2071=$r5, var3968=$r6, var2724=$r7}
; {lombok.javac.apt.Processor=var2169, r0=var3960, javax.annotation.processing.ProcessingEnvironment=var3917, r1=var1457, r2=var3346, java.lang.Exception=var1950, $r4=var1726, $r5=var2071, $r6=var3968, $r7=var2724}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: lombok.javac.apt.Processor;	r1 := @parameter0: javax.annotation.processing.ProcessingEnvironment;	r2 = specialinvoke r0.<lombok.javac.apt.Processor: java.lang.String collectData(javax.'annotation'.processing.ProcessingEnvironment)>(r1);	$r4 := @caughtexception;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>(java.lang.String)>("Report:\n\n");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 2