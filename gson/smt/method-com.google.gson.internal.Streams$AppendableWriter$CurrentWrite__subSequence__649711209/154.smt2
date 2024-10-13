(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3182 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun chars/-1580565060 (var3182) (Array Int Int))
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-var3182 var3182)
(declare-const null-Int Int)
(declare-const var3207 var3182) ; Statement: r1 := @this: com.google.gson.internal.Streams$AppendableWriter$CurrentWrite 
(assert (not (= var3207 null-var3182)))
(declare-const var1440 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1440 null-Int)))
(declare-const var1764 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1764 null-Int)))
(define-const var701 String String-init) ; Statement: $r0 = new java.lang.String 
(define-const var1023 (Array Int Int) (chars/-1580565060 var3207)) ; Statement: $r2 = r1.<com.google.gson.internal.Streams$AppendableWriter$CurrentWrite: char[] chars> 
(define-const var1501 Int (- var1764 var1440)) ; Statement: $i2 = i1 - i0 
(assert true)
;(assert (<init>/-253222812 var701 var1023 var1440 var1501)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(char[],int,int)>($r2, i0, $i2) 

(declare-const var701!1 String)
(declare-const var1023!1 (Array Int Int))
(declare-const var1440!1 Int)
(declare-const var1501!1 Int)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), chars/-1580565060=([com.google.gson.internal.Streams$AppendableWriter$CurrentWrite], char[]), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var3182=com.google.gson.internal.Streams$AppendableWriter$CurrentWrite, var3207=r1, var1440=i0, var1764=i1, var701=$r0, var1023=$r2, var1501=$i2}
; {com.google.gson.internal.Streams$AppendableWriter$CurrentWrite=var3182, r1=var3207, i0=var1440, i1=var1764, $r0=var701, $r2=var1023, $i2=var1501}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r1 := @this: com.google.gson.internal.Streams$AppendableWriter$CurrentWrite;	i0 := @parameter0: int;	i1 := @parameter1: int;	$r0 = new java.lang.String;	$r2 = r1.<com.google.gson.internal.Streams$AppendableWriter$CurrentWrite: char[] chars>;	$i2 = i1 - i0;	specialinvoke $r0.<java.lang.String: void <init>(char[],int,int)>($r2, i0, $i2);	return $r0
;block_num 1