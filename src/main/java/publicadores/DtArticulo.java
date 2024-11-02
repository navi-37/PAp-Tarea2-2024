/**
 * DtArticulo.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4.1-SNAPSHOT Nov 07, 2023 (07:57:58 UTC) WSDL2Java emitter.
 */

package publicadores;

public class DtArticulo  extends publicadores.DtDonacion  implements java.io.Serializable {
    private java.lang.String descripcion;

    private float peso;

    private java.lang.String dimensiones;

    public DtArticulo() {
    }

    public DtArticulo(
           java.lang.Integer id,
           publicadores.LocalDateTime fechaIngresada,
           java.lang.String descripcion,
           float peso,
           java.lang.String dimensiones) {
        super(
            id,
            fechaIngresada);
        this.descripcion = descripcion;
        this.peso = peso;
        this.dimensiones = dimensiones;
    }


    /**
     * Gets the descripcion value for this DtArticulo.
     * 
     * @return descripcion
     */
    public java.lang.String getDescripcion() {
        return descripcion;
    }


    /**
     * Sets the descripcion value for this DtArticulo.
     * 
     * @param descripcion
     */
    public void setDescripcion(java.lang.String descripcion) {
        this.descripcion = descripcion;
    }


    /**
     * Gets the peso value for this DtArticulo.
     * 
     * @return peso
     */
    public float getPeso() {
        return peso;
    }


    /**
     * Sets the peso value for this DtArticulo.
     * 
     * @param peso
     */
    public void setPeso(float peso) {
        this.peso = peso;
    }


    /**
     * Gets the dimensiones value for this DtArticulo.
     * 
     * @return dimensiones
     */
    public java.lang.String getDimensiones() {
        return dimensiones;
    }


    /**
     * Sets the dimensiones value for this DtArticulo.
     * 
     * @param dimensiones
     */
    public void setDimensiones(java.lang.String dimensiones) {
        this.dimensiones = dimensiones;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof DtArticulo)) return false;
        DtArticulo other = (DtArticulo) obj;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = super.equals(obj) && 
            ((this.descripcion==null && other.getDescripcion()==null) || 
             (this.descripcion!=null &&
              this.descripcion.equals(other.getDescripcion()))) &&
            this.peso == other.getPeso() &&
            ((this.dimensiones==null && other.getDimensiones()==null) || 
             (this.dimensiones!=null &&
              this.dimensiones.equals(other.getDimensiones())));
        __equalsCalc = null;
        return _equals;
    }

    private boolean __hashCodeCalc = false;
    public synchronized int hashCode() {
        if (__hashCodeCalc) {
            return 0;
        }
        __hashCodeCalc = true;
        int _hashCode = super.hashCode();
        if (getDescripcion() != null) {
            _hashCode += getDescripcion().hashCode();
        }
        _hashCode += new Float(getPeso()).hashCode();
        if (getDimensiones() != null) {
            _hashCode += getDimensiones().hashCode();
        }
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(DtArticulo.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://publicadores/", "dtArticulo"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("descripcion");
        elemField.setXmlName(new javax.xml.namespace.QName("", "descripcion"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("peso");
        elemField.setXmlName(new javax.xml.namespace.QName("", "peso"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "float"));
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("dimensiones");
        elemField.setXmlName(new javax.xml.namespace.QName("", "dimensiones"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
    }

    /**
     * Return type metadata object
     */
    public static org.apache.axis.description.TypeDesc getTypeDesc() {
        return typeDesc;
    }

    /**
     * Get Custom Serializer
     */
    public static org.apache.axis.encoding.Serializer getSerializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanSerializer(
            _javaType, _xmlType, typeDesc);
    }

    /**
     * Get Custom Deserializer
     */
    public static org.apache.axis.encoding.Deserializer getDeserializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanDeserializer(
            _javaType, _xmlType, typeDesc);
    }

}
