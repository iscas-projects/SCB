(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1565 0)
(declare-sort var3106 0)
(declare-sort var101 0)
(declare-sort var3350 0)
(declare-sort var23 0)
(declare-sort var741 0)
(declare-sort var1242 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun init/139172783 (var101 var3106) void)
(declare-fun cast-from-var1565-to-var101 (var1565) var101)
(declare-fun var3350_getProperty/258823597 (String) String)
(declare-fun var3106_getMessager/-1570138233 (var3106) var741)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun report/332018594 (var1565 var3106) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var741_printMessage/1937803563 (var741 var1242 String) void)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-var1565 var1565)
(declare-const null-var3106 var3106)
(declare-const null-String String)
(declare-const var1242-WARNING var1242)
(declare-const var978 var1565) ; Statement: r0 := @this: lombok.javac.apt.Processor 
(assert (not (= var978 null-var1565)))
(declare-const var2362 var3106) ; Statement: r1 := @parameter0: javax.annotation.processing.ProcessingEnvironment 
(assert (not (= var2362 null-var3106)))
(assert true)
;(assert (init/139172783 (cast-from-var1565-to-var101 var978) var2362)) ; Statement: specialinvoke r0.<javax.'annotation'.processing.AbstractProcessor: void init(javax.'annotation'.processing.ProcessingEnvironment)>(r1) 

(declare-const var978!1 var1565)
(declare-const var2362!1 var3106)
(define-const var3455 String (var3350_getProperty/258823597 "lombok.disable")) ; Statement: $r2 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("lombok.disable") 
 ; Statement: if $r2 == null goto $r8 = interfaceinvoke r1.<javax.'annotation'.processing.ProcessingEnvironment: javax.'annotation'.processing.Messager getMessager()>() 
(assert (= var3455 null-String)) ; Cond: $r2 == null 
(define-const var479 var741 (var3106_getMessager/-1570138233 var2362!1)) ; Statement: $r8 = interfaceinvoke r1.<javax.'annotation'.processing.ProcessingEnvironment: javax.'annotation'.processing.Messager getMessager()>() 
(define-const var3360 var1242 var1242-WARNING) ; Statement: $r4 = <javax.tools.Diagnostic$Kind: javax.tools.Diagnostic$Kind WARNING> 
(define-const var3370 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var3370 "Wrong usage of \u0027lombok.javac.apt.Processor\u0027. ")) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(java.lang.String)>("Wrong usage of \'lombok.javac.apt.Processor\'. ") 
(declare-const var3370!1 String)
(assert (= var3370!1 "Wrong usage of \u0027lombok.javac.apt.Processor\u0027. "))
(assert true)
(define-const var1007 String (report/332018594 var978!1 var2362!1)) ; Statement: $r5 = specialinvoke r0.<lombok.javac.apt.Processor: java.lang.String report(javax.'annotation'.processing.ProcessingEnvironment)>(r1) 
(assert true)
(define-const var3891 String (append/672562846 var3370!1 var1007)) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3370!2 String)
(assert (= var3370!2 (str.++ var3370!1 var1007)))
(assert true)
(define-const var2939 String (toString/-2075883882 var3891)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var741_printMessage/1937803563 var479 var3360 (cast-from-String-to-String var2939))) ; Statement: interfaceinvoke $r8.<javax.'annotation'.processing.Messager: void printMessage(javax.tools.Diagnostic$Kind,java.lang.CharSequence)>($r4, $r7) 

(declare-const var479!1 var741)
(declare-const var3360!1 var1242)
(declare-const var2939!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {init/139172783=([javax.annotation.processing.AbstractProcessor, javax.annotation.processing.ProcessingEnvironment], void), cast-from-var1565-to-var101=([lombok.javac.apt.Processor], javax.annotation.processing.AbstractProcessor), var3350_getProperty/258823597=([java.lang.String], java.lang.String), var3106_getMessager/-1570138233=([javax.annotation.processing.ProcessingEnvironment], javax.annotation.processing.Messager), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), report/332018594=([lombok.javac.apt.Processor, javax.annotation.processing.ProcessingEnvironment], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var741_printMessage/1937803563=([javax.annotation.processing.Messager, javax.tools.Diagnostic$Kind, java.lang.CharSequence], void), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var1565=lombok.javac.apt.Processor, var978=r0, var3106=javax.annotation.processing.ProcessingEnvironment, var2362=r1, var101=javax.annotation.processing.AbstractProcessor, var3350=java.lang.System, var3455=$r2, var23=null_type, var741=javax.annotation.processing.Messager, var479=$r8, var1242=javax.tools.Diagnostic$Kind, var3360=$r4, var3370=$r3, var1007=$r5, var3891=$r6, var2939=$r7}
; {lombok.javac.apt.Processor=var1565, r0=var978, javax.annotation.processing.ProcessingEnvironment=var3106, r1=var2362, javax.annotation.processing.AbstractProcessor=var101, java.lang.System=var3350, $r2=var3455, null_type=var23, javax.annotation.processing.Messager=var741, $r8=var479, javax.tools.Diagnostic$Kind=var1242, $r4=var3360, $r3=var3370, $r5=var1007, $r6=var3891, $r7=var2939}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: lombok.javac.apt.Processor;	r1 := @parameter0: javax.annotation.processing.ProcessingEnvironment;	specialinvoke r0.<javax.'annotation'.processing.AbstractProcessor: void init(javax.'annotation'.processing.ProcessingEnvironment)>(r1);	$r2 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("lombok.disable");	if $r2 == null goto $r8 = interfaceinvoke r1.<javax.'annotation'.processing.ProcessingEnvironment: javax.'annotation'.processing.Messager getMessager()>();	$r8 = interfaceinvoke r1.<javax.'annotation'.processing.ProcessingEnvironment: javax.'annotation'.processing.Messager getMessager()>();	$r4 = <javax.tools.Diagnostic$Kind: javax.tools.Diagnostic$Kind WARNING>;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>(java.lang.String)>("Wrong usage of \'lombok.javac.apt.Processor\'. ");	$r5 = specialinvoke r0.<lombok.javac.apt.Processor: java.lang.String report(javax.'annotation'.processing.ProcessingEnvironment)>(r1);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r8.<javax.'annotation'.processing.Messager: void printMessage(javax.tools.Diagnostic$Kind,java.lang.CharSequence)>($r4, $r7);	return
;block_num 2