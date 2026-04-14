-- Task 5: Users Table
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  created_at TIMESTAMP DEFAULT NOW()
);

-- Task 6: Contact Form
CREATE TABLE contact_form (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  message TEXT,
  phone VARCHAR(20),
  created_at TIMESTAMP DEFAULT NOW()
);

-- Task 7: Signups
CREATE TABLE signups (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  age INTEGER NOT NULL,
  status VARCHAR(20) DEFAULT 'approved',
  created_at TIMESTAMP DEFAULT NOW()
);

-- Lead Capture
CREATE TABLE leads (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  phone VARCHAR(20),
  company VARCHAR(100),
  message TEXT,
  source VARCHAR(50) DEFAULT 'website',
  status VARCHAR(20) DEFAULT 'new',
  created_at TIMESTAMP DEFAULT NOW()
);

-- E-commerce Orders
CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  customer_name VARCHAR(100) NOT NULL,
  customer_email VARCHAR(100) NOT NULL,
  product_name VARCHAR(100) NOT NULL,
  quantity INTEGER NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  total DECIMAL(10,2) NOT NULL,
  status VARCHAR(20) DEFAULT 'pending',
  created_at TIMESTAMP DEFAULT NOW()
);

-- Error Logs
CREATE TABLE error_logs (
  id SERIAL PRIMARY KEY,
  app_name VARCHAR(100) NOT NULL,
  error_message TEXT NOT NULL,
  error_level VARCHAR(20) NOT NULL,
  error_code VARCHAR(50),
  server VARCHAR(100),
  timestamp TIMESTAMP DEFAULT NOW(),
  created_at TIMESTAMP DEFAULT NOW()
);

-- File Uploads
CREATE TABLE file_uploads (
  id SERIAL PRIMARY KEY,
  file_name VARCHAR(200) NOT NULL,
  file_type VARCHAR(50) NOT NULL,
  file_size INTEGER NOT NULL,
  uploaded_by VARCHAR(100) NOT NULL,
  status VARCHAR(20) DEFAULT 'processed',
  created_at TIMESTAMP DEFAULT NOW()
);

-- Data Sync
CREATE TABLE data_sync (
  id SERIAL PRIMARY KEY,
  user_name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  phone VARCHAR(20),
  company VARCHAR(100),
  platform VARCHAR(50) NOT NULL,
  sync_status VARCHAR(20) DEFAULT 'synced',
  created_at TIMESTAMP DEFAULT NOW()
);

-- Appointments
CREATE TABLE appointments (
  id SERIAL PRIMARY KEY,
  patient_name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  phone VARCHAR(20),
  appointment_date DATE NOT NULL,
  appointment_time VARCHAR(20) NOT NULL,
  doctor_name VARCHAR(100),
  status VARCHAR(20) DEFAULT 'confirmed',
  created_at TIMESTAMP DEFAULT NOW()
);
