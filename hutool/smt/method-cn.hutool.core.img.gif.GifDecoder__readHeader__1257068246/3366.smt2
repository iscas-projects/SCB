(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var207 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun status/-57264194 (var207) Int)
(declare-const null-var207 var207)
(declare-const var2094 var207) ; Statement: r2 := @this: cn.hutool.core.img.gif.GifDecoder 
(assert (not (= var2094 null-var207)))
(define-const var2271 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2271)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2271!1 String)
(assert (= var2271!1 ""))
(define-const var3531 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
 ; Statement: if i5 >= 6 goto $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var3531 6)) ; Cond: i5 >= 6 
(assert true)
(define-const var303 String (toString/-2075883882 var2271!1)) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var3843 Bool (startsWith/-1785782452 var303 "GIF")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean startsWith(java.lang.String)>("GIF") 
 ; Statement: if 0 != $z0 goto virtualinvoke r2.<cn.hutool.core.img.gif.GifDecoder: void readLSD()>() 
(assert (not (not (= 0 (ite var3843 1 0))))) ; Negate: Cond: 0 != $z0  
(declare-const var2094!1 var207)
(assert (not (= var2094!1 null-var207)))
(assert (= (status/-57264194 var2094!1) 1)) ; Statement: r2.<cn.hutool.core.img.gif.GifDecoder: int status> = 1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), status/-57264194=([cn.hutool.core.img.gif.GifDecoder], int)}
; {var207=cn.hutool.core.img.gif.GifDecoder, var2094=r2, var2271=$r0, var3531=i5, var303=$r1, var3843=$z0}
; {cn.hutool.core.img.gif.GifDecoder=var207, r2=var2094, $r0=var2271, i5=var3531, $r1=var303, $z0=var3843}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r2 := @this: cn.hutool.core.img.gif.GifDecoder;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	i5 = 0;	if i5 >= 6 goto $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean startsWith(java.lang.String)>("GIF");	if 0 != $z0 goto virtualinvoke r2.<cn.hutool.core.img.gif.GifDecoder: void readLSD()>();	r2.<cn.hutool.core.img.gif.GifDecoder: int status> = 1;	return
;block_num 4