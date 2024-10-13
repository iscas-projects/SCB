(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2272 0)
(declare-sort var2058 0)
(declare-sort var2197 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun listOptions/603935673 (var2272 String var2058) void)
(declare-fun var2058_getFiler/257722249 (var2058) var2197)
(declare-fun findServices/1321109462 (var2272 String var2197) void)
(declare-fun addStacktrace/439092377 (var2272 String) void)
(declare-fun listProperties/-664076964 (var2272 String) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2272 var2272)
(declare-const null-var2058 var2058)
(declare-const var3911 var2272) ; Statement: r1 := @this: lombok.javac.apt.Processor 
(assert (not (= var3911 null-var2272)))
(declare-const var12 var2058) ; Statement: r2 := @parameter0: javax.annotation.processing.ProcessingEnvironment 
(assert (not (= var12 null-var2058)))
(define-const var1195 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1195)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1195!1 String)
(assert (= var1195!1 ""))
(assert true)
;(assert (append/672562846 var1195!1 "Problem report for usages of \u0027lombok.javac.apt.Processor\u0027\n\n")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Problem report for usages of \'lombok.javac.apt.Processor\'\n\n") 
(declare-const var1195!2 String)
(assert (= var1195!2 (str.++ var1195!1 "Problem report for usages of \u0027lombok.javac.apt.Processor\u0027\n\n")))
(assert true)
;(assert (listOptions/603935673 var3911 var1195!2 var12)) ; Statement: specialinvoke r1.<lombok.javac.apt.Processor: void listOptions(java.lang.StringBuilder,javax.'annotation'.processing.ProcessingEnvironment)>($r0, r2) 

(declare-const var3911!1 var2272)
(declare-const var1195!3 String)
(declare-const var12!1 var2058)
(define-const var1151 var2197 (var2058_getFiler/257722249 var12!1)) ; Statement: $r3 = interfaceinvoke r2.<javax.'annotation'.processing.ProcessingEnvironment: javax.'annotation'.processing.Filer getFiler()>() 
(assert true)
;(assert (findServices/1321109462 var3911!1 var1195!3 var1151)) ; Statement: specialinvoke r1.<lombok.javac.apt.Processor: void findServices(java.lang.StringBuilder,javax.'annotation'.processing.Filer)>($r0, $r3) 

(declare-const var3911!2 var2272)
(declare-const var1195!4 String)
(declare-const var1151!1 var2197)
(assert true)
;(assert (addStacktrace/439092377 var3911!2 var1195!4)) ; Statement: specialinvoke r1.<lombok.javac.apt.Processor: void addStacktrace(java.lang.StringBuilder)>($r0) 

(declare-const var3911!3 var2272)
(declare-const var1195!5 String)
(assert true)
;(assert (listProperties/-664076964 var3911!3 var1195!5)) ; Statement: specialinvoke r1.<lombok.javac.apt.Processor: void listProperties(java.lang.StringBuilder)>($r0) 

(declare-const var3911!4 var2272)
(declare-const var1195!6 String)
(assert true)
(define-const var380 String (toString/-2075883882 var1195!6)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), listOptions/603935673=([lombok.javac.apt.Processor, java.lang.StringBuilder, javax.annotation.processing.ProcessingEnvironment], void), var2058_getFiler/257722249=([javax.annotation.processing.ProcessingEnvironment], javax.annotation.processing.Filer), findServices/1321109462=([lombok.javac.apt.Processor, java.lang.StringBuilder, javax.annotation.processing.Filer], void), addStacktrace/439092377=([lombok.javac.apt.Processor, java.lang.StringBuilder], void), listProperties/-664076964=([lombok.javac.apt.Processor, java.lang.StringBuilder], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2272=lombok.javac.apt.Processor, var3911=r1, var2058=javax.annotation.processing.ProcessingEnvironment, var12=r2, var1195=$r0, var2197=javax.annotation.processing.Filer, var1151=$r3, var380=$r4}
; {lombok.javac.apt.Processor=var2272, r1=var3911, javax.annotation.processing.ProcessingEnvironment=var2058, r2=var12, $r0=var1195, javax.annotation.processing.Filer=var2197, $r3=var1151, $r4=var380}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: lombok.javac.apt.Processor;	r2 := @parameter0: javax.annotation.processing.ProcessingEnvironment;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Problem report for usages of \'lombok.javac.apt.Processor\'\n\n");	specialinvoke r1.<lombok.javac.apt.Processor: void listOptions(java.lang.StringBuilder,javax.'annotation'.processing.ProcessingEnvironment)>($r0, r2);	$r3 = interfaceinvoke r2.<javax.'annotation'.processing.ProcessingEnvironment: javax.'annotation'.processing.Filer getFiler()>();	specialinvoke r1.<lombok.javac.apt.Processor: void findServices(java.lang.StringBuilder,javax.'annotation'.processing.Filer)>($r0, $r3);	specialinvoke r1.<lombok.javac.apt.Processor: void addStacktrace(java.lang.StringBuilder)>($r0);	specialinvoke r1.<lombok.javac.apt.Processor: void listProperties(java.lang.StringBuilder)>($r0);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1