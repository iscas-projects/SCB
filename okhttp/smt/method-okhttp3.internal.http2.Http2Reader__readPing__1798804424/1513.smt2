(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var889 0)
(declare-sort var3602 0)
(declare-sort var3145 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3145-init () var3145)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var3145 String) void)
(declare-const null-var889 var889)
(declare-const null-var3602 var3602)
(declare-const null-Int Int)
(declare-const var3387 var889) ; Statement: r0 := @this: okhttp3.internal.http2.Http2Reader 
(assert (not (= var3387 null-var889)))
(declare-const var3579 var3602) ; Statement: r3 := @parameter0: okhttp3.internal.http2.Http2Reader$Handler 
(assert (not (= var3579 null-var3602)))
(declare-const var2981 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2981 null-Int)))
(declare-const var1543 Int) ; Statement: i4 := @parameter2: int 
(assert (not (= var1543 null-Int)))
(declare-const var3173 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var3173 null-Int)))
 ; Statement: if i0 == 8 goto (branch) 
(assert (not (= var2981 8))) ; Negate: Cond: i0 == 8  
(define-const var3904 var3145 var3145-init) ; Statement: $r5 = new java.io.IOException 
(define-const var244 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var244)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var244!1 String)
(assert (= var244!1 ""))
(assert true)
(define-const var3658 String (append/672562846 var244!1 "TYPE_PING length != 8: ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TYPE_PING length != 8: ") 
(declare-const var244!2 String)
(assert (= var244!2 (str.++ var244!1 "TYPE_PING length != 8: ")))
(assert true)
(define-const var2717 String (append/-1001720160 var3658 var2981)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3658!1 String)
(assert (str.prefixof var3658 var3658!1))
(assert true)
(define-const var2130 String (toString/-2075883882 var2717)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var3904 var2130)) ; Statement: specialinvoke $r5.<java.io.IOException: void <init>(java.lang.String)>($r9) 

(declare-const var3904!1 var3145)
(declare-const var2130!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var3145-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var889=okhttp3.internal.http2.Http2Reader, var3387=r0, var3602=okhttp3.internal.http2.Http2Reader$Handler, var3579=r3, var2981=i0, var1543=i4, var3173=i1, var3145=java.io.IOException, var3904=$r5, var244=$r6, var3658=$r7, var2717=$r8, var2130=$r9}
; {okhttp3.internal.http2.Http2Reader=var889, r0=var3387, okhttp3.internal.http2.Http2Reader$Handler=var3602, r3=var3579, i0=var2981, i4=var1543, i1=var3173, java.io.IOException=var3145, $r5=var3904, $r6=var244, $r7=var3658, $r8=var2717, $r9=var2130}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.internal.http2.Http2Reader;	r3 := @parameter0: okhttp3.internal.http2.Http2Reader$Handler;	i0 := @parameter1: int;	i4 := @parameter2: int;	i1 := @parameter3: int;	if i0 == 8 goto (branch);	$r5 = new java.io.IOException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TYPE_PING length != 8: ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.io.IOException: void <init>(java.lang.String)>($r9);	throw $r5
;block_num 2