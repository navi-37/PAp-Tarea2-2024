/**
 * DtDistribucion.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4.1-SNAPSHOT Nov 07, 2023 (07:57:58 UTC) WSDL2Java emitter.
 */

package publicadores;

public class DtDistribucion  implements java.io.Serializable {
    private publicadores.DtBeneficiario beneficiario;

    private publicadores.DtDonacion donacion;

    private publicadores.EstadoDistribucion estado;

    private java.util.Calendar fechaEntrega;

    private java.util.Calendar fechaPreparacion;

    private int id;

    public DtDistribucion() {
    }

    public DtDistribucion(
           publicadores.DtBeneficiario beneficiario,
           publicadores.DtDonacion donacion,
           publicadores.EstadoDistribucion estado,
           java.util.Calendar fechaEntrega,
           java.util.Calendar fechaPreparacion,
           int id) {
           this.beneficiario = beneficiario;
           this.donacion = donacion;
           this.estado = estado;
           this.fechaEntrega = fechaEntrega;
           this.fechaPreparacion = fechaPreparacion;
           this.id = id;
    }


    /**
     * Gets the beneficiario value for this DtDistribucion.
     * 
     * @return beneficiario
     */
    public publicadores.DtBeneficiario getBeneficiario() {
        return beneficiario;
    }


    /**
     * Sets the beneficiario value for this DtDistribucion.
     * 
     * @param beneficiario
     */
    public void setBeneficiario(publicadores.DtBeneficiario beneficiario) {
        this.beneficiario = beneficiario;
    }


    /**
     * Gets the donacion value for this DtDistribucion.
     * 
     * @return donacion
     */
    public publicadores.DtDonacion getDonacion() {
        return donacion;
    }


    /**
     * Sets the donacion value for this DtDistribucion.
     * 
     * @param donacion
     */
    public void setDonacion(publicadores.DtDonacion donacion) {
        this.donacion = donacion;
    }


    /**
     * Gets the estado value for this DtDistribucion.
     * 
     * @return estado
     */
    public publicadores.EstadoDistribucion getEstado() {
        return estado;
    }


    /**
     * Sets the estado value for this DtDistribucion.
     * 
     * @param estado
     */
    public void setEstado(publicadores.EstadoDistribucion estado) {
        this.estado = estado;
    }


    /**
     * Gets the fechaEntrega value for this DtDistribucion.
     * 
     * @return fechaEntrega
     */
    public java.util.Calendar getFechaEntrega() {
        return fechaEntrega;
    }


    /**
     * Sets the fechaEntrega value for this DtDistribucion.
     * 
     * @param fechaEntrega
     */
    public void setFechaEntrega(java.util.Calendar fechaEntrega) {
        this.fechaEntrega = fechaEntrega;
    }


    /**
     * Gets the fechaPreparacion value for this DtDistribucion.
     * 
     * @return fechaPreparacion
     */
    public java.util.Calendar getFechaPreparacion() {
        return fechaPreparacion;
    }


    /**
     * Sets the fechaPreparacion value for this DtDistribucion.
     * 
     * @param fechaPreparacion
     */
    public void setFechaPreparacion(java.util.Calendar fechaPreparacion) {
        this.fechaPreparacion = fechaPreparacion;
    }


    /**
     * Gets the id value for this DtDistribucion.
     * 
     * @return id
     */
    public int getId() {
        return id;
    }


    /**
     * Sets the id value for this DtDistribucion.
     * 
     * @param id
     */
    public void setId(int id) {
        this.id = id;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof DtDistribucion)) return false;
        DtDistribucion other = (DtDistribucion) obj;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            ((this.beneficiario==null && other.getBeneficiario()==null) || 
             (this.beneficiario!=null &&
              this.beneficiario.equals(other.getBeneficiario()))) &&
            ((this.donacion==null && other.getDonacion()==null) || 
             (this.donacion!=null &&
              this.donacion.equals(other.getDonacion()))) &&
            ((this.estado==null && other.getEstado()==null) || 
             (this.estado!=null &&
              this.estado.equals(other.getEstado()))) &&
            ((this.fechaEntrega==null && other.getFechaEntrega()==null) || 
             (this.fechaEntrega!=null &&
              this.fechaEntrega.equals(other.getFechaEntrega()))) &&
            ((this.fechaPreparacion==null && other.getFechaPreparacion()==null) || 
             (this.fechaPreparacion!=null &&
              this.fechaPreparacion.equals(other.getFechaPreparacion()))) &&
            this.id == other.getId();
        __equalsCalc = null;
        return _equals;
    }

    private boolean __hashCodeCalc = false;
    public synchronized int hashCode() {
        if (__hashCodeCalc) {
            return 0;
        }
        __hashCodeCalc = true;
        int _hashCode = 1;
        if (getBeneficiario() != null) {
            _hashCode += getBeneficiario().hashCode();
        }
        if (getDonacion() != null) {
            _hashCode += getDonacion().hashCode();
        }
        if (getEstado() != null) {
            _hashCode += getEstado().hashCode();
        }
        if (getFechaEntrega() != null) {
            _hashCode += getFechaEntrega().hashCode();
        }
        if (getFechaPreparacion() != null) {
            _hashCode += getFechaPreparacion().hashCode();
        }
        _hashCode += getId();
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(DtDistribucion.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://publicadores/", "dtDistribucion"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("beneficiario");
        elemField.setXmlName(new javax.xml.namespace.QName("", "beneficiario"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://publicadores/", "dtBeneficiario"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("donacion");
        elemField.setXmlName(new javax.xml.namespace.QName("", "donacion"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://publicadores/", "dtDonacion"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("estado");
        elemField.setXmlName(new javax.xml.namespace.QName("", "estado"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://publicadores/", "estadoDistribucion"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("fechaEntrega");
        elemField.setXmlName(new javax.xml.namespace.QName("", "fechaEntrega"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "dateTime"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("fechaPreparacion");
        elemField.setXmlName(new javax.xml.namespace.QName("", "fechaPreparacion"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "dateTime"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("id");
        elemField.setXmlName(new javax.xml.namespace.QName("", "id"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
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
