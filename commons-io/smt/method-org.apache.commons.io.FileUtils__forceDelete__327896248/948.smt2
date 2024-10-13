(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1143 0)
(declare-sort var925 0)
(declare-sort var1677 0)
(declare-sort var1469 0)
(declare-sort var3720 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var925_requireNonNull/1378936425 (var1677 String) var1677)
(declare-fun cast-from-var1143-to-var1677 (var1143) var1677)
(declare-fun var1469-init () var1469)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1677) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-252871109 (var1469 String var3720) void)
(declare-fun cast-from-var1469-to-var3720 (var1469) var3720)
(declare-const null-var1143 var1143)
(declare-const null-var1469 var1469)
(declare-const var2815 var1143) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var2815 null-var1143)))
;(assert (var925_requireNonNull/1378936425 (cast-from-var1143-to-var1677 var2815) "file")) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "file") 

(declare-const var2815!1 var1143)
(declare-const var2302 String)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var227 var1469) ; Statement: $r13 := @caughtexception 
(assert (not (= var227 null-var1469)))
(define-const var2461 var1469 var1469-init) ; Statement: $r20 = new java.io.IOException 
(define-const var2425 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2425)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2425!1 String)
(assert (= var2425!1 ""))
(assert true)
(define-const var1866 String (append/672562846 var2425!1 "Cannot delete file: ")) ; Statement: $r16 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot delete file: ") 
(declare-const var2425!2 String)
(assert (= var2425!2 (str.++ var2425!1 "Cannot delete file: ")))
(assert true)
(define-const var1992 String (append/-1031950772 var1866 (cast-from-var1143-to-var1677 var2815!1))) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1866!1 String)
(assert (str.prefixof var1866 var1866!1))
(assert true)
(define-const var1908 String (toString/-2075883882 var1992)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-252871109 var2461 var1908 (cast-from-var1469-to-var3720 var227))) ; Statement: specialinvoke $r20.<java.io.IOException: void <init>(java.lang.String,java.lang.Throwable)>($r18, $r13) 

(declare-const var2461!1 var1469)
(declare-const var1908!1 String)
(declare-const var227!1 var1469)
 ; Statement: throw $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {var925_requireNonNull/1378936425=([java.lang.Object, java.lang.String], java.lang.Object), cast-from-var1143-to-var1677=([java.io.File], java.lang.Object), var1469-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-252871109=([java.io.IOException, java.lang.String, java.lang.Throwable], void), cast-from-var1469-to-var3720=([java.io.IOException], java.lang.Throwable)}
; {var1143=java.io.File, var2815=r0, var925=java.util.Objects, var1677=java.lang.Object, var2302="file", var1469=java.io.IOException, var227=$r13, var2461=$r20, var2425=$r19, var1866=$r16, var1992=$r17, var1908=$r18, var3720=java.lang.Throwable}
; {java.io.File=var1143, r0=var2815, java.util.Objects=var925, java.lang.Object=var1677, "file"=var2302, java.io.IOException=var1469, $r13=var227, $r20=var2461, $r19=var2425, $r16=var1866, $r17=var1992, $r18=var1908, java.lang.Throwable=var3720}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.io.File;	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "file");	$r13 := @caughtexception;	$r20 = new java.io.IOException;	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot delete file: ");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r20.<java.io.IOException: void <init>(java.lang.String,java.lang.Throwable)>($r18, $r13);	throw $r20
;block_num 2