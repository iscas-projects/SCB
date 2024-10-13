(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2749 0)
(declare-sort var2146 0)
(declare-sort var3898 0)
(declare-sort var173 0)
(declare-sort var2055 0)
(declare-sort var2010 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3898) void)
(declare-fun cast-from-var2749-to-var3898 (var2749) var3898)
(declare-fun var173-init () var173)
(declare-fun <init>/1815860079 (var173) void)
(declare-fun update/249775080 (var173 (Array Int Int) Int Int) void)
(declare-fun getValue/212411758 (var173) Int)
(declare-fun nameCRC32/535445216 (var2749) Int)
(declare-fun getBytes/-163691139 (String var2055) (Array Int Int))
(declare-fun unicodeName/535445216 (var2749) (Array Int Int))
(declare-const null-var2749 var2749)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var2010-UTF_8 var2055)
(declare-const var2347 var2749) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AbstractUnicodeExtraField 
(assert (not (= var2347 null-var2749)))
(declare-const var651 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var651 null-String)))
(declare-const var2005 (Array Int Int)) ; Statement: r2 := @parameter1: byte[] 
(assert (not (= var2005 null-__Array__Int__Int__)))
(declare-const var1255 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var1255 null-Int)))
(declare-const var2921 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var2921 null-Int)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2749-to-var3898 var2347))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var2347!1 var2749)
(define-const var2940 var173 var173-init) ; Statement: $r1 = new java.util.zip.CRC32 
(assert true)
;(assert (<init>/1815860079 var2940)) ; Statement: specialinvoke $r1.<java.util.zip.CRC32: void <init>()>() 

(declare-const var2940!1 var173)
(assert true)
;(assert (update/249775080 var2940!1 var2005 var1255 var2921)) ; Statement: virtualinvoke $r1.<java.util.zip.CRC32: void update(byte[],int,int)>(r2, i0, i1) 

(declare-const var2940!2 var173)
(declare-const var2005!1 (Array Int Int))
(declare-const var1255!1 Int)
(declare-const var2921!1 Int)
(assert true)
(define-const var2098 Int (getValue/212411758 var2940!2)) ; Statement: $l2 = virtualinvoke $r1.<java.util.zip.CRC32: long getValue()>() 
(declare-const var2347!2 var2749)
(assert (not (= var2347!2 null-var2749)))
(assert (= (nameCRC32/535445216 var2347!2) var2098)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AbstractUnicodeExtraField: long nameCRC32> = $l2 
(define-const var1642 var2055 var2010-UTF_8) ; Statement: $r4 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8> 
(assert true)
(define-const var3925 (Array Int Int) (getBytes/-163691139 var651 var1642)) ; Statement: $r5 = virtualinvoke r3.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r4) 
(declare-const var2347!3 var2749)
(assert (not (= var2347!3 null-var2749)))
(assert (= (unicodeName/535445216 var2347!3) var3925)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AbstractUnicodeExtraField: byte[] unicodeName> = $r5 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2749-to-var3898=([com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AbstractUnicodeExtraField], java.lang.Object), var173-init=([], java.util.zip.CRC32), <init>/1815860079=([java.util.zip.CRC32], void), update/249775080=([java.util.zip.CRC32, byte[], int, int], void), getValue/212411758=([java.util.zip.CRC32], long), nameCRC32/535445216=([com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AbstractUnicodeExtraField], long), getBytes/-163691139=([java.lang.String, java.nio.charset.Charset], byte[]), unicodeName/535445216=([com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AbstractUnicodeExtraField], byte[])}
; {var2749=com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AbstractUnicodeExtraField, var2347=r0, var651=r3, var2146=null_type, var2005=r2, var1255=i0, var2921=i1, var3898=java.lang.Object, var173=java.util.zip.CRC32, var2940=$r1, var2098=$l2, var2055=java.nio.charset.Charset, var2010=java.nio.charset.StandardCharsets, var1642=$r4, var3925=$r5}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AbstractUnicodeExtraField=var2749, r0=var2347, r3=var651, null_type=var2146, r2=var2005, i0=var1255, i1=var2921, java.lang.Object=var3898, java.util.zip.CRC32=var173, $r1=var2940, $l2=var2098, java.nio.charset.Charset=var2055, java.nio.charset.StandardCharsets=var2010, $r4=var1642, $r5=var3925}
;seq <java.lang.String: byte[] getBytes(java.nio.charset.Charset)>
;cnt {"<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AbstractUnicodeExtraField;	r3 := @parameter0: java.lang.String;	r2 := @parameter1: byte[];	i0 := @parameter2: int;	i1 := @parameter3: int;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.util.zip.CRC32;	specialinvoke $r1.<java.util.zip.CRC32: void <init>()>();	virtualinvoke $r1.<java.util.zip.CRC32: void update(byte[],int,int)>(r2, i0, i1);	$l2 = virtualinvoke $r1.<java.util.zip.CRC32: long getValue()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AbstractUnicodeExtraField: long nameCRC32> = $l2;	$r4 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8>;	$r5 = virtualinvoke r3.<java.lang.String: byte[] getBytes(java.nio.charset.Charset)>($r4);	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.zip.AbstractUnicodeExtraField: byte[] unicodeName> = $r5;	return
;block_num 1