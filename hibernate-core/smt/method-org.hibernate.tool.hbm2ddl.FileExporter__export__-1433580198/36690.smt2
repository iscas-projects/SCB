(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var260 0)
(declare-sort var462 0)
(declare-sort var2482 0)
(declare-sort var398 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun writer/-1491257426 (var260) var2482)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun write/654681022 (var398 String) void)
(declare-fun cast-from-var2482-to-var398 (var2482) var398)
(declare-const null-var260 var260)
(declare-const null-String String)
(declare-const var2187 var260) ; Statement: r0 := @this: org.hibernate.tool.hbm2ddl.FileExporter 
(assert (not (= var2187 null-var260)))
(declare-const var3186 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var3186 null-String)))
(define-const var895 var2482 (writer/-1491257426 var2187)) ; Statement: $r2 = r0.<org.hibernate.tool.hbm2ddl.FileExporter: java.io.FileWriter writer> 
(define-const var1836 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1836)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1836!1 String)
(assert (= var1836!1 ""))
(assert true)
(define-const var319 String (append/672562846 var1836!1 var3186)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1836!2 String)
(assert (= var1836!2 (str.++ var1836!1 var3186)))
(assert true)
(define-const var2827 String (append/-1166366385 var319 10)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10) 
(declare-const var319!1 String)
(assert (str.prefixof var319 var319!1))
(assert true)
(define-const var21 String (toString/-2075883882 var2827)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (write/654681022 (cast-from-var2482-to-var398 var895) var21)) ; Statement: virtualinvoke $r2.<java.io.FileWriter: void write(java.lang.String)>($r6) 

(declare-const var895!1 var2482)
(declare-const var21!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {writer/-1491257426=([org.hibernate.tool.hbm2ddl.FileExporter], java.io.FileWriter), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), write/654681022=([java.io.Writer, java.lang.String], void), cast-from-var2482-to-var398=([java.io.FileWriter], java.io.Writer)}
; {var260=org.hibernate.tool.hbm2ddl.FileExporter, var2187=r0, var3186=r3, var462=null_type, var2482=java.io.FileWriter, var895=$r2, var1836=$r1, var319=$r4, var2827=$r5, var21=$r6, var398=java.io.Writer}
; {org.hibernate.tool.hbm2ddl.FileExporter=var260, r0=var2187, r3=var3186, null_type=var462, java.io.FileWriter=var2482, $r2=var895, $r1=var1836, $r4=var319, $r5=var2827, $r6=var21, java.io.Writer=var398}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.tool.hbm2ddl.FileExporter;	r3 := @parameter0: java.lang.String;	$r2 = r0.<org.hibernate.tool.hbm2ddl.FileExporter: java.io.FileWriter writer>;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(10);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r2.<java.io.FileWriter: void write(java.lang.String)>($r6);	return
;block_num 1